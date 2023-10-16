Why 🤔
-------
  - **Bug bounty**: the CVE templates in the official nuclei-templates repo are completely useless for bug bounty. This because everyone is using those templates looking for low hanging fruit. Build your own templates for new (and old!) CVEs, scan all the possible targets and don't forget to share them in the official nuclei-templates repo.
  - **General Security**: Security people can write their own templates for missing CVEs and use them to secure products during pentests, vuln assessments, red team ops and so on... every user will benefit from these actions. If they are very good security people they'll share the templates in official nuclei-templates repo helping the whole infosec community.
  - **Stats & Data lover**: I love data and statistics and I hope people like me will enjoy.

How it works 🖥️
-------

Automated Logic:
```
for each cve in trickest/cve:
    if this cve not present in nuclei-templates:
        if it contains one of the words we are looking for:
            if it is a CVE suitable for nuclei:
                print it
```

- Which are the "words we are looking for"? `reflected`, `rce`, `local file inclusion`, `server side request forgery`, `ssrf`, `remote code execution`, `remote command execution`, `command injection`, `code injection`, `ssti`, `template injection`, `lfi`, `xss`, `Cross-Site Scripting`, `Cross Site Scripting`, `SQL injection`, `Prototype pollution`, `XML External Entity`, `Request Smuggling`, `XXE`, `Open redirect`, `Path Traversal` and `Directory Traversal`.

- This means the tracked vulnerability types are: XSS, RCE, SQL injection, Local File Inclusion, Server Side Request Forgery, Prototype Pollution, Request Smuggling, Open Redirect, XML Enternal Entity, Path Traversal and Server Side Template Injection; but new vuln types will be supported.

- Why there can be errors in categorizing CVEs? Because when grepping for these words there can be false positives, meaning that an XXE vulnerability can be categorized as RCE because e.g. it says "in certain situations can be escalated to rce".

- Why if I subtract the "CVEs missing" from the "CVEs analyzed" I don't get the exact official nuclei templates count? Because as said before the tracked vuln types are just 10 (the most famous ones), but a lot of other types are reported as well (and they will be supported).

- What does it mean a CVE is suitable for Nuclei? Basically a remote web or network vulnerability (e.g. a CVE on Android is not suitable).

Contributing 🛠
-------

Just open an [issue](https://github.com/edoardottt/missing-cve-nuclei-templates/issues) / [pull request](https://github.com/edoardottt/missing-cve-nuclei-templates/pulls).


Thanks 💝
-------
  - [@ProjectDiscovery](https://github.com/projectdiscovery)
  - [@Trickest](https://github.com/trickest)


License 📝
-------

This repository is under [MIT License](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/LICENSE).  
[edoardoottavianelli.it](https://www.edoardoottavianelli.it) to contact me.