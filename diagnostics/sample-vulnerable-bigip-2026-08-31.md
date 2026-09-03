# iHealth Diagnostics — sample-vulnerable-bigip

- **Date:** 2026-08-31
- **QKView ID:** SAMPLE-DATA
- **Tenable One Scan ID:** 73
- **Tenable One Scan UUID:** b7040254-abf5-4cb3-aaa4-c5f4f7671f13
- **Tenable One Scan Date:** 2026-09-03 (live proof-of-concept run against bigip-lab-01 / 192.168.1.98, via AWX job 333)

| Severity | Count (iHealth) |
|----------|------------------|
| Critical | 4 |
| High     | 2 |
| Medium   | 1 |
| Low      | 0 |

The iHealth findings below are the original sample/placeholder data this repo ships with (fictional CVE IDs for demonstration). The Tenable One section further down is real, live scan output pulled against an actual lab BIG-IP as a proof of concept for the AWX integration — the two data sources don't overlap in this particular report because the iHealth CVEs are synthetic, but the merge/cross-reference logic itself is real and working.

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

## Tenable One Vulnerability Scan

Real output from a live Tenable One scan (scan id `73`, run `b7040254-abf5-4cb3-aaa4-c5f4f7671f13`) against `bigip-lab-01` (`192.168.1.98`), pulled via the AWX `tenable-vuln-enrichment` path (`tasks/process_tenable.yml`) and matched to the device by IP. Confirmed working end-to-end (kick off export → poll → download → parse) in AWX job 333.

The scan returned **115 findings** in total. Most are informational/configuration-check plugins with no associated CVE, which is normal for a network vulnerability scan — only 2 of the 115 carry a CVE identifier:

| Severity | CVE | Plugin ID | CVSSv3 | State | Source |
|----------|-----|-----------|--------|-------|--------|
| LOW | CVE-1999-0524 | 10114 | 0.0 | New | Tenable-only |
| LOW | CVE-2008-5161 | 70658 | 3.7 | New | Tenable-only |

Neither CVE overlaps with the (synthetic) iHealth findings above, so every finding in both sections is currently "single-source only" in this particular report — expected, since the iHealth CVE IDs here are placeholder data, not results from this same lab device.

Beyond the two CVE-bearing rows, the scan also surfaced a large number of non-CVE findings, dominated by one plugin (ID `95388`) recurring across dozens of service instances at severities ranging from Medium to High — consistent with a certificate or protocol-configuration check repeated per listener/port rather than 30+ distinct vulnerabilities. The full 115-row export is available via the AWX job artifacts; this table shows only the CVE-mapped subset for readability.

## Details

<details id="finding-d000160916">
<summary>D000160916 — BIG-IP iControl REST vulnerability CVE-2026-41225</summary>

- **Fixes Introduced In:** 17.1.3.2, 17.5.1.6, 21.0.0.2
- **CVE Identifiers:** CVE-2026-41225
- **Article Links:** [K000160916](https://my.f5.com/manage/s/article/K000160916)
- **Related Changes:** ID 2230229, ID 2208653, ID 2216753, ID 2227469, ID 2218645, ID 2217953, ID 2227441, ID 2218621, ID 2202097, ID 2216793, ID 2217973, ID 2216773
- **Tenable One:** Not observed in the live scan (this device's real scan found different, unrelated CVEs — see the Tenable One section above)
</details>
<details id="finding-d000160857">
<summary>D000160857 — BIG-IP iControl REST endpoint in Appliance mode vulnerability CVE-2026-34176</summary>

- **Fixes Introduced In:** 17.1.3.2, 17.5.1.6, 21.0.0.2
- **CVE Identifiers:** CVE-2026-34176
- **Article Links:** [K000160857](https://my.f5.com/manage/s/article/K000160857)
- **Related Changes:** ID 2216645
- **Tenable One:** Not observed in the live scan (this device's real scan found different, unrelated CVEs — see the Tenable One section above)
</details>
<details id="finding-d000160863">
<summary>D000160863 — BIG-IP iControl REST and tmsh vulnerability CVE-2026-39459</summary>

- **Fixes Introduced In:** 17.1.3.2, 17.5.1.6, 21.0.0.2
- **CVE Identifiers:** CVE-2026-39459
- **Article Links:** [K000160863](https://my.f5.com/manage/s/article/K000160863)
- **Related Changes:** ID 2201965, ID 2201961
- **Tenable One:** Not observed in the live scan (this device's real scan found different, unrelated CVEs — see the Tenable One section above)
</details>
<details id="finding-d000161107">
<summary>D000161107 — BIG-IP tmsh vulnerability CVE-2026-41217</summary>

- **Fixes Introduced In:** 17.1.3.2, 17.5.1.6, 21.0.0.2
- **CVE Identifiers:** CVE-2026-41217
- **Article Links:** [K000161107](https://my.f5.com/manage/s/article/K000161107)
- **Related Changes:** ID 2217485, ID 2257421
- **Tenable One:** Not observed in this scan (iHealth-only, config-review advisory)
</details>
<details id="finding-d000160876">
<summary>D000160876 — BIG-IP Appliance mode iControl REST vulnerability CVE-2026-42930</summary>

- **Fixes Introduced In:** 17.1.3.2, 17.5.1.6, 21.0.0.2
- **CVE Identifiers:** CVE-2026-42930
- **Article Links:** [K000160876](https://my.f5.com/manage/s/article/K000160876)
- **Related Changes:** ID 2229021
- **Tenable One:** Not observed in the live scan (this device's real scan found different, unrelated CVEs — see the Tenable One section above)
</details>
<details id="finding-d000160979">
<summary>D000160979 — BIG-IP iControl SOAP vulnerability CVE-2026-40631</summary>

- **Fixes Introduced In:** 17.1.3.2, 17.5.1.6, 21.0.0.2, 21.1.0
- **CVE Identifiers:** CVE-2026-40631
- **Article Links:** [K000160979](https://my.f5.com/manage/s/article/K000160979)
- **Related Changes:** ID 2201377
- **Tenable One:** Not observed in the live scan (this device's real scan found different, unrelated CVEs — see the Tenable One section above)
</details>
<details id="finding-d000160874">
<summary>D000160874 — BIG-IP Configuration utility vulnerability CVE-2026-39455</summary>

- **Fixes Introduced In:** 17.1.3.2, 17.5.1.6, 21.0.0.2
- **CVE Identifiers:** CVE-2026-39455
- **Article Links:** [K000160874](https://my.f5.com/manage/s/article/K000160874)
- **Related Changes:** ID 2220369
- **Tenable One:** Not observed in the live scan (this device's real scan found different, unrelated CVEs — see the Tenable One section above)
</details>
