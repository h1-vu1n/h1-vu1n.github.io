---
title: LFI Spree
date: 2024-6-13
---

|                   |                                                                                                                                                                                                                                                                  |
|-------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Vulnerability found** | LFI (Local file inclusion)                                                                                                                                                                                                                                       |
| **Description**   | The File Inclusion vulnerability allows an attacker to include a file, usually exploiting a “dynamic file inclusion” mechanisms implemented in the target application. The vulnerability occurs due to the use of user-supplied input without proper validation. |
| **Impact**        | LFI can lead to the disclosure of critical information or even remote code execution.                                                                                                                                                                            |
| **Owasp test ID** | OTG-INPVAL-013                                                                                                                                                                                                                                                   |

Hello all, last month I found a google dork that led me to the five LFI (local file inclusion) vulnerabilities in a government websites. The exploitation was not complex.
