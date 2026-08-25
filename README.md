# F5 BIG-IP → iHealth Diagnostics → Public Repo (AWX project)

Generates a qkview on a BIG-IP, uploads it to F5 iHealth, waits for analysis,
retrieves the diagnostics, and publishes a sorted Markdown findings table to
this project's **companion public repo** (not this repo — see
`diagnostics_repo` below).

Designed to run as an **AWX Job Template**, following the same shape as the
sibling `f5-ucs-backup` project in this environment.

## What it does

1. **Play 1** (per BIG-IP): creates a qkview named `<host>-<YYYY-MM-DD>.qkview`,
   downloads it to the EE, then removes the transient qkview from the device
   (toggle with `remove_remote_qkview`).
2. **Play 2** (localhost): gets an iHealth API OAuth2 token, then for each
   staged qkview — uploads it, polls until analysis completes (F5's API
   returns `202` while processing, `200` when ready), fetches the
   diagnostics, and renders a sorted (Critical → High → Medium → Low)
   Markdown table.
3. **Play 3** (localhost): clones the **diagnostics** repo (initializing it on
   first run if it has no commits yet), copies the new report(s) in,
   regenerates a `README.md` index (date/hostname/severity counts/link per
   report), commits and pushes.

## ⚠️ This publishes to a PUBLIC repository

`diagnostics_repo` (in `group_vars/all.yml`) is public. Only the **rendered
Markdown report** is ever pushed there — the raw `.qkview` file (which
contains a full config and license dump) never leaves `staging_dir` and is
excluded by `.gitignore` as a defense in depth. Before relying on this for
anything beyond a demo, review a generated report for internal
hostnames/IPs/config detail you may not want public — the diagnostics
summaries come verbatim from F5's iHealth heuristics and aren't redacted.

## Files

| Path | Purpose |
|------|---------|
| `ihealth_diagnostics.yml` | the playbook (run this from the Job Template) |
| `tasks/process_qkview.yml` | per-qkview upload/poll/diagnostics/render, included in a loop |
| `templates/diagnostics_table.md.j2` | renders the sorted findings table |
| `inventory/hosts.yml` | devices to check — one to start, add more later |
| `group_vars/all.yml` | paths, iHealth endpoints, target repo, toggles |
| `group_vars/bigip.yml` | F5 connection (provider dict, local connection) |
| `collections/requirements.yml` | `f5networks.f5_modules` (auto-installed on project sync) |
| `execution-environment/` | optional custom EE (see "Execution environment") |

## Runtime secrets (never committed)

| Variable | What | Supplied via |
|----------|------|--------------|
| `f5_username` / `f5_password` | BIG-IP account (qkview generation) | AWX credential |
| `ihealth_client_id` / `ihealth_client_secret` | F5 iHealth API OAuth2 client (Basic auth for the token endpoint) | AWX credential |
| `git_pat` | token with write access to the **diagnostics** repo | AWX credential |

`diagnostics_repo` (the public repo URL, minus `https://`) lives in
`group_vars/all.yml` — edit it to your repo.

---

## Wiring it up in AWX

### 1. Project
Resources → **Projects → Add** → Source Control type **Git**, point at *this*
repo. AWX syncs it and installs the collection from
`collections/requirements.yml`.

### 2. Credentials (custom credential types)

**F5 account** — reuse the type already defined for `f5-ucs-backup` if it
exists (fields `username`/`password` → `extra_vars.f5_username`/`f5_password`).

**F5 iHealth API** — Administration → Credential Types → Add:
- *Input config*
  ```yaml
  fields:
    - id: client_id
      type: string
      label: iHealth Client ID
    - id: client_secret
      type: string
      label: iHealth Client Secret
      secret: true
  required: [client_id, client_secret]
  ```
- *Injector config*
  ```yaml
  extra_vars:
    ihealth_client_id: "{{ client_id }}"
    ihealth_client_secret: "{{ client_secret }}"
  ```
Register the client at F5 iHealth (API Clients) and use those values here —
**never** the ones from any prior throwaway script. If a client secret has
ever been pasted in plaintext anywhere (chat, ticket, commit), rotate it
before using it here.

**Git token** — same pattern as `f5-ucs-backup`, one field `token` (secret),
injector `extra_vars.git_pat: "{{ token }}"`. Use a token scoped to the
**diagnostics** repo specifically (public repos still require write auth to
push).

> Fast path for the very first manual test: skip the custom types and pass
> `f5_username`, `f5_password`, `ihealth_client_id`, `ihealth_client_secret`,
> `git_pat` as **extra variables** on launch (or a Survey). Move them into
> credentials once it works.

### 3. Inventory
Resources → **Inventories → Add**, then add a host matching
`inventory/hosts.yml` (name `bigip-lab-01`, host var
`ansible_host: <mgmt-ip>`).

### 4. Job Template
Resources → **Templates → Add**:
- Inventory: the one above
- Project: this project
- Playbook: `ihealth_diagnostics.yml`
- Execution Environment: default `AWX EE` (collection installed from the
  project), or the custom `f5-ihealth-ee` (below)
- Credentials: F5 account + F5 iHealth API + Git token from step 2

**Launch** it once manually against the single test device. Check the
diagnostics repo receives a new report and the README index updates.

### 5. Schedule
On the Job Template → **Schedules → Add** if you want this to run
periodically rather than on demand.

---

## Execution environment (optional, for production)

The quick path installs `f5networks.f5_modules` from the project on every
sync. To bake it in:

```bash
cd execution-environment
pip install ansible-builder
./build.sh        # builds f5-ihealth-ee:1.0 in Colima's Docker daemon
```
Then register it in AWX (Administration → Execution Environments) with image
`f5-ihealth-ee:1.0` and **pull policy `Never`**, and select it on the Job
Template.

## Scaling to more devices
Add more hosts to `inventory/hosts.yml`. Play 1 generates a qkview per host;
Play 2's loop uploads and processes every staged qkview independently, so
each device gets its own report and its own row in the README index.

## Restore / re-run
Reports are additive (one file per hostname+date in `diagnostics/`) — re-running
for the same device on the same day overwrites that day's report, not history.
There's no retention/pruning here (unlike `f5-ucs-backup`'s UCS archive) since
this is an informational index, not a backup archive.
