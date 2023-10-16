### Weekly updated list of missing CVEs in nuclei templates official repository

<br>

> **Note**
> This repository is 100% automated so there can be errors, but in general is pretty accurate. Go to section "How it works" to understand how data is collected.  


Stats 📊
-------

**CVEs analyzed**: 82140

**CVEs missing**: 21641

**Dropdown by vuln type**:

| Type | Count | Data |
| - | - | - |
| XSS | 8921 | [xss.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/type/xss.txt) |
| RCE | 3368 | [rce.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/type/rce.txt) |
| SQL Injection | 5943 | [sqli.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/type/sqli.txt) |
| Local File Inclusion | 86 | [lfi.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/type/lfi.txt) |
| Server Side Request Forgery | 158 | [ssrf.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/type/ssrf.txt) |
| Prototype Pollution | 165 | [proto-pollution.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/type/proto-pollution.txt) |
| Request Smuggling | 67 | [req-smuggling.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/type/req-smuggling.txt) |
| Open Redirect | 213 | [open-redirect.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/type/open-redirect.txt) |
| XML External Entity | 315 | [xxe.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/type/xxe.txt) |
| Path Traversal | 2375 | [path-traversal.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/type/path-traversal.txt) |
| Server Side Template Injection | 30 | [ssti.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/type/ssti.txt) |

**Dropdown by year**:

| Year | Count | Data |
| - | - | - |
| 1999 | 1 | [1999.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/year/1999.txt) |
| 2000 | 1 | [2000.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/year/2000.txt) |
| 2001 | 7 | [2001.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/year/2001.txt) |
| 2002 | 18 | [2002.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/year/2002.txt) |
| 2003 | 27 | [2003.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/year/2003.txt) |
| 2004 | 90 | [2004.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/year/2004.txt) |
| 2005 | 321 | [2005.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/year/2005.txt) |
| 2006 | 965 | [2006.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/year/2006.txt) |
| 2007 | 1013 | [2007.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/year/2007.txt) |
| 2008 | 1918 | [2008.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/year/2008.txt) |
| 2009 | 734 | [2009.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/year/2009.txt) |
| 2010 | 634 | [2010.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/year/2010.txt) |
| 2011 | 217 | [2011.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/year/2011.txt) |
| 2012 | 428 | [2012.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/year/2012.txt) |
| 2013 | 363 | [2013.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/year/2013.txt) |
| 2014 | 788 | [2014.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/year/2014.txt) |
| 2015 | 794 | [2015.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/year/2015.txt) |
| 2016 | 503 | [2016.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/year/2016.txt) |
| 2017 | 1286 | [2017.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/year/2017.txt) |
| 2018 | 1844 | [2018.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/year/2018.txt) |
| 2019 | 1423 | [2019.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/year/2019.txt) |
| 2020 | 2057 | [2020.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/year/2020.txt) |
| 2021 | 1874 | [2021.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/year/2021.txt) |
| 2022 | 2540 | [2022.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/year/2022.txt) |
| 2023 | 1795 | [2023.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/year/2023.txt) |

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