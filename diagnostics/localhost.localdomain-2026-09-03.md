# iHealth Diagnostics — localhost.localdomain

- **Date:** 2026-09-03
- **QKView ID:** 26809091

| Severity | Count |
|----------|-------|
| Critical | 0 |
| High     | 11 |
| Medium   | 8 |
| Low      | 12 |

## Findings

| Severity | Diagnostic | Heading | Summary |
|----------|------------|---------|---------|
| HIGH | [D000162521](#finding-d000162521) | BIG-IP and BIG-IQ Configuration utility vulnerability CVE-2026-66842 | BIG-IP has a vulnerability where an authenticated user of any role may be able to create administrative user accounts through an undisclosed request to the Configuration utility. |
| HIGH | [D006068](#finding-d006068) | Login Banner Configuration Check | This diagnostic checks whether a login banner is configured on the BIG-IP system. A login banner can display important legal and security notices to users before accessing the system. |
| HIGH | [D009908](#finding-d009908) | Idle-Logout Setting Configuration Check | This diagnostic verifies whether the idle-logout setting is configured on the BIG-IP system. Implementing an idle-logout policy helps reduce the risk of unauthorized access by terminating inactive sessions automatically. |
| HIGH | [D012815](#finding-d012815) | Appliance mode not configured for BIG-IP system | Appliance mode locks down administrative access by restricting certain functionality, including shell access and advanced system-level configurations. This enhances security and operational compliance for environments requiring stricter controls. |
| HIGH | [D015632](#finding-d015632) | Admin and Root Account Status Check | This diagnostic verifies whether the administrative account is disabled and assesses the status of the root account. Disabled accounts improve security by minimizing access to critical systems. |
| HIGH | [D25301105](#finding-d25301105) | Mitigate SLOWRead attacks by tuning TCP profile settings | SLOWRead attacks exploit low-speed data transfer to exhaust server resources. Adjust TCP profile settings, including receive window size and idle timeout values, to mitigate this threat on BIG-IP systems. |
| HIGH | [H517352](#finding-h517352) | Out of Memory Killer was invoked. Possible memory issues present | The kern.log file contains evidence that the device was under memory pressure and invoked oom-killer in an attempt to free memory. |
| HIGH | [H52145254-6](#finding-h52145254-6) | Indicators of Compromise (IoCs) are found on the system. | This information is based on evidence that F5 has observed on compromised devices, which F5 feels are reliable indicators. It is important to note that exploited systems might not all show the same indicators, and a skilled attacker may be able to remove traces of their work. It is not possible to prove a device has not been compromised; when there is any uncertainty, you should consider the device compromised. |
| HIGH | [H626151](#finding-h626151) | BIG-IP evaluation and demonstration licenses may expire | Production BIG-IP system license files do not expire; however, evaluation or demonstration BIG-IP licenses do expire. This applies to add-on module evaluation licenses for all modules. If you convert an evaluation or demonstration BIG-IP system to a production BIG-IP system, you must activate the new BIG-IP production license. |
| HIGH | [H709036](#finding-h709036) | SSL certificates are expired, about to expire, or are not yet valid | SSL certificates have specific date ranges that identify when they are valid. The following output lists expired, nearly expired, and not yet valid certificates, grouped by their status and whether they are in use by a BIG-IP traffic object. Please note that in qkview files generated on BIG-IP 11.x systems, this diagnostic does not calculate whether SSL certificates are not yet valid. |
| HIGH | [H753774](#finding-h753774) | The BIG-IP GTM configuration is missing a listener object | The BIG-IP GTM configuration is missing a listener object. A listener is a BIG-IP GTM object to which you assign a specific IP address. When traffic is sent to that IP address, the listener alerts the BIG-IP GTM system, allowing it to either handle the traffic locally or forward the traffic to the appropriate resource. |
| MEDIUM | [D014784](#finding-d014784) | BIG-IP Cookie Persistence Encryption not enabled | This system uses cookie persistence profile without encryption. We recommend enabling encryption for improved security. |
| MEDIUM | [D048704](#finding-d048704) | Certain BIG-IP non-production licenses may prevent further system upgrades | Starting with BIG-IP 11.4.1, customers can purchase all BIG-IP Virtual Edition (VE) SKUs with Version Plus licenses. Version Plus licenses enable customers to use BIG-IP VE with perpetual usage. However, upgrades are limited to software versions within a pre-established range of software releases. |
| MEDIUM | [H383261](#finding-h383261) | The BIG-IP GTM system must use a local self IP address to define a server to represent the BIG-IP GTM system | BIG-IP GTM must have a BIG-IP system server defined to represent the BIG-IP GTM system. The server definition must contain at least one local self IP address. |
| MEDIUM | [H494013](#finding-h494013) | A password policy is not configured or can be strengthened. | F5 recommends that you configure a secure password policy for the BIG-IP system. |
| MEDIUM | [H726514](#finding-h726514) | There are not enough NTP servers either configured or reliably reachable, or the NTP daemon is not running | F5 recommends that you configure at least three external NTP servers. If fewer than three Network Time Protocol (NTP) servers are reachable, the system will not be able to reliably detect incorrect time sources. |
| MEDIUM | [H770025](#finding-h770025) | F5 recommends removing orphaned configuration objects | Over the course of a system's operation, various configuration objects may become orphaned as they are created and then abandoned to accommodate changing business or application needs. While orphaned configuration objects do not initially cause problems, if allowed to accumulate, you can eventually encounter some of the following issues : performance degradation, increased memory and CPU utilization, and hindered administration from unnecessarily large configurations that can result in configuration conflicts such as IP address or object name conflicts. |
| MEDIUM | [H770025-1](#finding-h770025-1) | F5 recommends removing orphaned configuration objects | Over the course of a system's operation, various configuration objects may become orphaned as they are created and then abandoned to accommodate changing business or application needs. While orphaned configuration objects do not initially cause problems, if allowed to accumulate, you can eventually encounter some of the following issues : performance degradation, increased memory and CPU utilization, and hindered administration from unnecessarily large configurations that can result in configuration conflicts such as IP address or object name conflicts. |
| MEDIUM | [H830235](#finding-h830235) | Cookie or universal persistence may fail for subsequent requests on Keep-Alive HTTP connections | The BIG-IP system may appear to ignore persistence information for subsequent requests on a Keep-Alive HTTP connection when cookie or universal persistence is used. |
| LOW | [D000161728](#finding-d000161728) | BIG-IP Configuration utility vulnerability CVE-2026-63020 | A vulnerability exists in an undisclosed BIG-IP Configuration utility page that may allow an attacker to spoof error messages. |
| LOW | [D014342](#finding-d014342) | Preserving or modifying HTTP response headers removed by the BIG-IP ASM system | Exposing server information in HTTP responses can assist attackers in identifying the server software and version being used. |
| LOW | [D061719](#finding-d061719) | Guided video demonstrations and free training for upgrading BIG-IP software | Using the latest versions of BIG-IP software ensures that you have access to the most advanced capabilities, the highest quality software, and the most secure releases. F5 recommends implementing BIG-IP 14.1.x for BIG-IP appliances and BIG-IP 15.1.x for BIG-IP VEs, at a minimum. |
| LOW | [D085949](#finding-d085949) | After the Good-Better-Best licensing was introduced in 2014, a license may have a restriction on the number of provisioned vCPUs allowed | To check the number of CPUs allowed, enter the 'tmsh show sys license  detail \| grep perf_VE_cores' command. If you are running a new license, the command output should appear similar to the following example: 'perf_VE_cores [8]'. If no output is reported, your system is using a license prior to 2014. |
| LOW | [H380932](#finding-h380932) | Optional modules or features may be configurable but will not function unless licensed | Modules or features that are listed as optional modules in the BIG-IP license may be configurable; however, functionality for these modules or features is not active unless the license includes support for the module. |
| LOW | [H391596](#finding-h391596) | BIG-IP LTM may send requests to unexpected pools for subsequent requests on Keep-Alive HTTP connections | BIG-IP LTM may send requests to unexpected pools for subsequent requests on a Keep-Alive HTTP connection because BIG-IP LTM makes a load-balancing decision for only the first request. This behavior may occur when using either an iRule or an HTTP Class profile that load balances HTTP requests to multiple pools. |
| LOW | [H436234](#finding-h436234) | Avoid logging all requests for BIG-IP ASM virtual servers that run on VE platforms | When you select a logging profile for BIG-IP ASM virtual servers that run on BIG-IP VE platforms, you should avoid using a logging profile that logs all requests if the virtual server processes a high volume of traffic. If you use a logging profile that logs all requests, the system may experience performance issues while attempting to keep up with the logging demands. |
| LOW | [H441024](#finding-h441024) | Log levels are not set to the default value | The logging levels indicated in the Output section are not set to their default values in the BigDB database. You may see less or more information than you expect. Use caution when changing a log level from its default setting. |
| LOW | [H444724](#finding-h444724) | The management interface is allowing access from public IP addresses | The management interface is ether configured to use a public IP address or is allowing public address to access the Configuration Utility. |
| LOW | [H504022](#finding-h504022) | Detected a health monitor configuration that does not adhere to recommended best practices | F5 recommends that you configure most monitors with a timeout value of three times the interval value, plus one. This prevents the monitor from marking the node down before the system sends the last check. |
| LOW | [H638394-26](#finding-h638394-26) | Error Message: Clock advanced by <number> ticks | The BIG-IP system daemon heartbeat is a recurring signal that a service generates. The BIG-IP system continually monitors daemon heartbeat signals for certain daemons, such as the Traffic Management Microkernel (TMM), to determine whether the service is running. The BIG-IP system logs an error message when TMM fails to complete its polling loop and update its heartbeat signal within the threshold period. |
| LOW | [H701182](#finding-h701182) | Non-ASCII characters removed from Qkview XML files | Certain Non-ASCII characters cause parsing issues and prevent a 'qkview' file from being processed by iHealth. These characters are removed at upload time so that the 'qkview' file can be viewed in iHealth. This is strictly an issue in the 'qkview' file, not the system the 'qkview' file was generated from. |

## Details

<!-- Fixes Introduced In / CVE Identifiers come straight from the iHealth API
     (fixedInVersions.version, results.h_cve_ids). Article Links / Related
     Changes are both derived from results.solution, split by id prefix
     ("K..." = KB article, anything else = related change ID) -- this repo
     hasn't seen a CVE-flagged finding live yet to confirm that split, so
     treat "Related Changes" as best-effort until validated against one. -->
<details id="finding-d000162521">
<summary>D000162521 — BIG-IP and BIG-IQ Configuration utility vulnerability CVE-2026-66842</summary>

- **Fixes Introduced In:** {'major': 17, 'minor': 1, 'maintenance': 3, 'point': 4, 'fix': ''}, {'major': 17, 'minor': 5, 'maintenance': 1, 'point': 8, 'fix': ''}, {'major': 21, 'minor': 1, 'maintenance': 0, 'point': 1, 'fix': ''}
- **CVE Identifiers:** CVE-2026-66842
- **Article Links:** [K000162521](https://my.f5.com/manage/s/article/K000162521)
- **Related Changes:** —
</details>
<details id="finding-d006068">
<summary>D006068 — Login Banner Configuration Check</summary>

- **Fixes Introduced In:** —
- **CVE Identifiers:** —
- **Article Links:** [K6068](https://my.f5.com/manage/s/article/K6068)
- **Related Changes:** —
</details>
<details id="finding-d009908">
<summary>D009908 — Idle-Logout Setting Configuration Check</summary>

- **Fixes Introduced In:** —
- **CVE Identifiers:** —
- **Article Links:** [K9908](https://my.f5.com/manage/s/article/K9908)
- **Related Changes:** —
</details>
<details id="finding-d012815">
<summary>D012815 — Appliance mode not configured for BIG-IP system</summary>

- **Fixes Introduced In:** —
- **CVE Identifiers:** —
- **Article Links:** [K12815](https://my.f5.com/manage/s/article/K12815)
- **Related Changes:** —
</details>
<details id="finding-d015632">
<summary>D015632 — Admin and Root Account Status Check</summary>

- **Fixes Introduced In:** —
- **CVE Identifiers:** —
- **Article Links:** [K15632](https://my.f5.com/manage/s/article/K15632)
- **Related Changes:** —
</details>
<details id="finding-d25301105">
<summary>D25301105 — Mitigate SLOWRead attacks by tuning TCP profile settings</summary>

- **Fixes Introduced In:** —
- **CVE Identifiers:** —
- **Article Links:** [K25301105](https://my.f5.com/manage/s/article/K25301105)
- **Related Changes:** —
</details>
<details id="finding-h517352">
<summary>H517352 — Out of Memory Killer was invoked. Possible memory issues present</summary>

- **Fixes Introduced In:** —
- **CVE Identifiers:** —
- **Article Links:** [K16419](https://my.f5.com/manage/s/article/K16419), [K47241910](https://my.f5.com/manage/s/article/K47241910)
- **Related Changes:** —
</details>
<details id="finding-h52145254-6">
<summary>H52145254-6 — Indicators of Compromise (IoCs) are found on the system.</summary>

- **Fixes Introduced In:** —
- **CVE Identifiers:** —
- **Article Links:** [K11438344](https://my.f5.com/manage/s/article/K11438344)
- **Related Changes:** —
</details>
<details id="finding-h626151">
<summary>H626151 — BIG-IP evaluation and demonstration licenses may expire</summary>

- **Fixes Introduced In:** —
- **CVE Identifiers:** —
- **Article Links:** [K4679](https://my.f5.com/manage/s/article/K4679)
- **Related Changes:** —
</details>
<details id="finding-h709036">
<summary>H709036 — SSL certificates are expired, about to expire, or are not yet valid</summary>

- **Fixes Introduced In:** —
- **CVE Identifiers:** —
- **Article Links:** [K8187](https://my.f5.com/manage/s/article/K8187), [K15664](https://my.f5.com/manage/s/article/K15664)
- **Related Changes:** —
</details>
<details id="finding-h753774">
<summary>H753774 — The BIG-IP GTM configuration is missing a listener object</summary>

- **Fixes Introduced In:** —
- **CVE Identifiers:** —
- **Article Links:** [K5427](https://my.f5.com/manage/s/article/K5427)
- **Related Changes:** —
</details>
<details id="finding-d014784">
<summary>D014784 — BIG-IP Cookie Persistence Encryption not enabled</summary>

- **Fixes Introduced In:** —
- **CVE Identifiers:** —
- **Article Links:** [K14784](https://my.f5.com/manage/s/article/K14784)
- **Related Changes:** —
</details>
<details id="finding-d048704">
<summary>D048704 — Certain BIG-IP non-production licenses may prevent further system upgrades</summary>

- **Fixes Introduced In:** —
- **CVE Identifiers:** —
- **Article Links:** [K15643](https://my.f5.com/manage/s/article/K15643), [K15667](https://my.f5.com/manage/s/article/K15667)
- **Related Changes:** —
</details>
<details id="finding-h383261">
<summary>H383261 — The BIG-IP GTM system must use a local self IP address to define a server to represent the BIG-IP GTM system</summary>

- **Fixes Introduced In:** —
- **CVE Identifiers:** —
- **Article Links:** [K15671](https://my.f5.com/manage/s/article/K15671)
- **Related Changes:** —
</details>
<details id="finding-h494013">
<summary>H494013 — A password policy is not configured or can be strengthened.</summary>

- **Fixes Introduced In:** —
- **CVE Identifiers:** —
- **Article Links:** [K15497](https://my.f5.com/manage/s/article/K15497), [K5962](https://my.f5.com/manage/s/article/K5962)
- **Related Changes:** —
</details>
<details id="finding-h726514">
<summary>H726514 — There are not enough NTP servers either configured or reliably reachable, or the NTP daemon is not running</summary>

- **Fixes Introduced In:** —
- **CVE Identifiers:** —
- **Article Links:** [K3122](https://my.f5.com/manage/s/article/K3122), [K10240](https://my.f5.com/manage/s/article/K10240)
- **Related Changes:** —
</details>
<details id="finding-h770025">
<summary>H770025 — F5 recommends removing orphaned configuration objects</summary>

- **Fixes Introduced In:** —
- **CVE Identifiers:** —
- **Article Links:** [K15335](https://my.f5.com/manage/s/article/K15335)
- **Related Changes:** —
</details>
<details id="finding-h770025-1">
<summary>H770025-1 — F5 recommends removing orphaned configuration objects</summary>

- **Fixes Introduced In:** —
- **CVE Identifiers:** —
- **Article Links:** [K15335](https://my.f5.com/manage/s/article/K15335), [K14620](https://my.f5.com/manage/s/article/K14620)
- **Related Changes:** —
</details>
<details id="finding-h830235">
<summary>H830235 — Cookie or universal persistence may fail for subsequent requests on Keep-Alive HTTP connections</summary>

- **Fixes Introduced In:** —
- **CVE Identifiers:** —
- **Article Links:** [K7964](https://my.f5.com/manage/s/article/K7964)
- **Related Changes:** —
</details>
<details id="finding-d000161728">
<summary>D000161728 — BIG-IP Configuration utility vulnerability CVE-2026-63020</summary>

- **Fixes Introduced In:** {'major': 17, 'minor': 1, 'maintenance': 3, 'point': 4, 'fix': ''}, {'major': 17, 'minor': 5, 'maintenance': 1, 'point': 8, 'fix': ''}, {'major': 21, 'minor': 1, 'maintenance': 0, 'point': 1, 'fix': ''}
- **CVE Identifiers:** CVE-2026-63020
- **Article Links:** [K000161728](https://my.f5.com/manage/s/article/K000161728)
- **Related Changes:** —
</details>
<details id="finding-d014342">
<summary>D014342 — Preserving or modifying HTTP response headers removed by the BIG-IP ASM system</summary>

- **Fixes Introduced In:** —
- **CVE Identifiers:** —
- **Article Links:** [K14342](https://my.f5.com/manage/s/article/K14342)
- **Related Changes:** —
</details>
<details id="finding-d061719">
<summary>D061719 — Guided video demonstrations and free training for upgrading BIG-IP software</summary>

- **Fixes Introduced In:** —
- **CVE Identifiers:** —
- **Article Links:** [K41125752](https://my.f5.com/manage/s/article/K41125752)
- **Related Changes:** —
</details>
<details id="finding-d085949">
<summary>D085949 — After the Good-Better-Best licensing was introduced in 2014, a license may have a restriction on the number of provisioned vCPUs allowed</summary>

- **Fixes Introduced In:** —
- **CVE Identifiers:** —
- **Article Links:** [K14810](https://my.f5.com/manage/s/article/K14810)
- **Related Changes:** —
</details>
<details id="finding-h380932">
<summary>H380932 — Optional modules or features may be configurable but will not function unless licensed</summary>

- **Fixes Introduced In:** —
- **CVE Identifiers:** —
- **Article Links:** [K16538](https://my.f5.com/manage/s/article/K16538)
- **Related Changes:** —
</details>
<details id="finding-h391596">
<summary>H391596 — BIG-IP LTM may send requests to unexpected pools for subsequent requests on Keep-Alive HTTP connections</summary>

- **Fixes Introduced In:** —
- **CVE Identifiers:** —
- **Article Links:** [K9800](https://my.f5.com/manage/s/article/K9800), [K13753](https://my.f5.com/manage/s/article/K13753)
- **Related Changes:** —
</details>
<details id="finding-h436234">
<summary>H436234 — Avoid logging all requests for BIG-IP ASM virtual servers that run on VE platforms</summary>

- **Fixes Introduced In:** —
- **CVE Identifiers:** —
- **Article Links:** [K42992723](https://my.f5.com/manage/s/article/K42992723)
- **Related Changes:** —
</details>
<details id="finding-h441024">
<summary>H441024 — Log levels are not set to the default value</summary>

- **Fixes Introduced In:** —
- **CVE Identifiers:** —
- **Article Links:** [K5532](https://my.f5.com/manage/s/article/K5532)
- **Related Changes:** —
</details>
<details id="finding-h444724">
<summary>H444724 — The management interface is allowing access from public IP addresses</summary>

- **Fixes Introduced In:** —
- **CVE Identifiers:** —
- **Article Links:** [K7312](https://my.f5.com/manage/s/article/K7312), [K13309](https://my.f5.com/manage/s/article/K13309)
- **Related Changes:** —
</details>
<details id="finding-h504022">
<summary>H504022 — Detected a health monitor configuration that does not adhere to recommended best practices</summary>

- **Fixes Introduced In:** —
- **CVE Identifiers:** —
- **Article Links:** [K12531](https://my.f5.com/manage/s/article/K12531)
- **Related Changes:** —
</details>
<details id="finding-h638394-26">
<summary>H638394-26 — Error Message: Clock advanced by <number> ticks</summary>

- **Fixes Introduced In:** —
- **CVE Identifiers:** —
- **Article Links:** [K10095](https://my.f5.com/manage/s/article/K10095)
- **Related Changes:** —
</details>
<details id="finding-h701182">
<summary>H701182 — Non-ASCII characters removed from Qkview XML files</summary>

- **Fixes Introduced In:** —
- **CVE Identifiers:** —
- **Article Links:** —
- **Related Changes:** —
</details>
