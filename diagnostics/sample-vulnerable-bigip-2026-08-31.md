> **⚠ Sample data.** This report was generated from a hand-built (not
> device-derived) diagnostics payload to illustrate what the pipeline
> produces when a real qkview contains CVE-flagged findings — it does not
> come from a scan of any real BIG-IP device. CVE IDs, KB articles, and fix
> versions are real F5 published advisories; the "device" and QKView ID are
> not. Rendered through the same `diagnostics_table.md.j2` template the real
> pipeline uses, so formatting matches production output exactly.

# iHealth Diagnostics — sample-vulnerable-bigip

- **Date:** 2026-08-31
- **QKView ID:** SAMPLE-DATA

| Severity | Count |
|----------|-------|
| Critical | 4 |
| High     | 2 |
| Medium   | 1 |
| Low      | 0 |

## Findings

| Severity | Diagnostic | Heading | Summary |
|----------|------------|---------|---------|
| CRITICAL | [D000160916](#finding-d000160916) | BIG-IP iControl REST vulnerability CVE-2026-41225 | A vulnerability exists in iControl REST where a highly privileged, authenticated attacker with at least the Manager role can create configuration objects that allow running arbitrary commands. |
| CRITICAL | [D000160857](#finding-d000160857) | BIG-IP iControl REST endpoint in Appliance mode vulnerability CVE-2026-34176 | When running in Appliance mode, an authenticated remote command injection vulnerability exists in an undisclosed iControl REST endpoint. A successful exploit can allow the attacker to cross a security boundary. |
| CRITICAL | [D000160863](#finding-d000160863) | BIG-IP iControl REST and tmsh vulnerability CVE-2026-39459 | A vulnerability exists in iControl REST and the TMOS Shell (tmsh) where a highly privileged, authenticated attacker with at least the Manager role can create configuration objects that allow running arbitrary commands. |
| CRITICAL | [D000161107](#finding-d000161107) | BIG-IP tmsh vulnerability CVE-2026-41217 | A vulnerability exists in an undisclosed BIG-IP TMOS Shell (tmsh) command that may allow an authenticated attacker with resource administrator or administrator role to execute arbitrary system commands with higher privileges. |
| HIGH | [D000160876](#finding-d000160876) | BIG-IP Appliance mode iControl REST vulnerability CVE-2026-42930 | When running in Appliance mode, an authenticated attacker assigned the 'Administrator' role may be able to bypass Appliance mode restrictions on a BIG-IP system. |
| HIGH | [D000160979](#finding-d000160979) | BIG-IP iControl SOAP vulnerability CVE-2026-40631 | An authenticated attacker with the Resource Administrator or Administrator role can modify configuration objects through iControl SOAP resulting in privilege escalation. |
| MEDIUM | [D000160874](#finding-d000160874) | BIG-IP Configuration utility vulnerability CVE-2026-39455 | When the BIG-IP Configuration utility is configured to use Lightweight Directory Access Protocol (LDAP) authentication, undisclosed traffic can cause the httpd process to exhaust the available file descriptors. |

## Details

<!-- Fixes Introduced In / CVE Identifiers come straight from the iHealth API
     (fixedInVersions.version, results.h_cve_ids). Article Links / Related
     Changes are both derived from results.solution, split by id prefix
     ("K..." = KB article, anything else = related change ID) -- this repo
     hasn't seen a CVE-flagged finding live yet to confirm that split, so
     treat "Related Changes" as best-effort until validated against one. -->
<details id="finding-d000160916">
<summary>D000160916 — BIG-IP iControl REST vulnerability CVE-2026-41225</summary>

- **Fixes Introduced In:** 17.1.3.2, 17.5.1.6, 21.0.0.2
- **CVE Identifiers:** CVE-2026-41225
- **Article Links:** [K000160916](https://my.f5.com/manage/s/article/K000160916)
- **Related Changes:** ID 2230229, ID 2208653, ID 2216753, ID 2227469, ID 2218645, ID 2217953, ID 2227441, ID 2218621, ID 2202097, ID 2216793, ID 2217973, ID 2216773
</details>
<details id="finding-d000160857">
<summary>D000160857 — BIG-IP iControl REST endpoint in Appliance mode vulnerability CVE-2026-34176</summary>

- **Fixes Introduced In:** 17.1.3.2, 17.5.1.6, 21.0.0.2
- **CVE Identifiers:** CVE-2026-34176
- **Article Links:** [K000160857](https://my.f5.com/manage/s/article/K000160857)
- **Related Changes:** ID 2216645
</details>
<details id="finding-d000160863">
<summary>D000160863 — BIG-IP iControl REST and tmsh vulnerability CVE-2026-39459</summary>

- **Fixes Introduced In:** 17.1.3.2, 17.5.1.6, 21.0.0.2
- **CVE Identifiers:** CVE-2026-39459
- **Article Links:** [K000160863](https://my.f5.com/manage/s/article/K000160863)
- **Related Changes:** ID 2201965, ID 2201961
</details>
<details id="finding-d000161107">
<summary>D000161107 — BIG-IP tmsh vulnerability CVE-2026-41217</summary>

- **Fixes Introduced In:** 17.1.3.2, 17.5.1.6, 21.0.0.2
- **CVE Identifiers:** CVE-2026-41217
- **Article Links:** [K000161107](https://my.f5.com/manage/s/article/K000161107)
- **Related Changes:** ID 2217485, ID 2257421
</details>
<details id="finding-d000160876">
<summary>D000160876 — BIG-IP Appliance mode iControl REST vulnerability CVE-2026-42930</summary>

- **Fixes Introduced In:** 17.1.3.2, 17.5.1.6, 21.0.0.2
- **CVE Identifiers:** CVE-2026-42930
- **Article Links:** [K000160876](https://my.f5.com/manage/s/article/K000160876)
- **Related Changes:** ID 2229021
</details>
<details id="finding-d000160979">
<summary>D000160979 — BIG-IP iControl SOAP vulnerability CVE-2026-40631</summary>

- **Fixes Introduced In:** 17.1.3.2, 17.5.1.6, 21.0.0.2, 21.1.0
- **CVE Identifiers:** CVE-2026-40631
- **Article Links:** [K000160979](https://my.f5.com/manage/s/article/K000160979)
- **Related Changes:** ID 2201377
</details>
<details id="finding-d000160874">
<summary>D000160874 — BIG-IP Configuration utility vulnerability CVE-2026-39455</summary>

- **Fixes Introduced In:** 17.1.3.2, 17.5.1.6, 21.0.0.2
- **CVE Identifiers:** CVE-2026-39455
- **Article Links:** [K000160874](https://my.f5.com/manage/s/article/K000160874)
- **Related Changes:** ID 2220369
</details>
