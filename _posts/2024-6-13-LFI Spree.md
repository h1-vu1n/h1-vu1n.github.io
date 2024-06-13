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

In March, while testing a government website, I created a Google dork that led me to five instances of LFI (local file inclusion) vulnerabilities. The exploitation process was not complex. While attempting to identify injection vulnerabilities on one of the websites, I found an entry point 'fileName='. Quickly, I attempted to access internal directories using the **../** sequence and successfully retrieved the contents of the listed files.

**../../../../etc/passwd**  
**../../../../etc/group**  
**../../../../etc/hosts**  
**../../../../etc/issue**  
**../../../../etc/passwd**  
**../../../../proc/version** and many more.  

but I got fail when tried to convert this vulnerability into RCE. 

![First LFI](https://raw.githubusercontent.com/h1-vu1n/h1-vu1n.github.io/main/assets/GDCTG.PNG)

Created one google dork to find out the same entrypoints in different domains and I got around 10-15 different websites in search result. Tried to exploit the same files and five domains were vulnerable to LFI (still two websites are not patched).  

![Second LFI](https://raw.githubusercontent.com/h1-vu1n/h1-vu1n.github.io/main/assets/Legislation.PNG)  

**Report timeline**  

1-March-2024 --> Reported five vulnerabilities to the stakeholder  
2-March-2024 --> Stakeholder acknowledged the issue  
10-March-2024 --> Three vulnerabilities patched  

I will publish the dork once all vulnerabilities are patched.
