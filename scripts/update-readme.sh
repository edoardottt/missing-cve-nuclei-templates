#!/bin/bash

ROOTPATH="$HOME/github/missing-cve-nuclei-templates"

rm -rf $ROOTPATH/README.md

# get number of CVEs analyzed
CVES=$(find /root/github/cve -type f -name "*CVE*" | wc -l)

# get number of CVEs missing
MISSING=$(cat /root/github/missing-cve-nuclei-templates/data/all.txt | wc -l)

# update readme 1
cat "$ROOTPATH/scripts/readme1.txt" > $ROOTPATH/README.md

echo "" >> $ROOTPATH/README.md

# update variables
echo "**CVEs analyzed**: $CVES" >> $ROOTPATH/README.md

echo "" >> $ROOTPATH/README.md

echo "**CVEs missing**: $MISSING" >> $ROOTPATH/README.md

echo "" >> $ROOTPATH/README.md

echo "**Dropdown by vuln type**:" >> $ROOTPATH/README.md

echo "" >> $ROOTPATH/README.md

# VULN TYPE TABLE
echo "| Type | Count | Data |" >> $ROOTPATH/README.md
echo "| - | - | - |" >> $ROOTPATH/README.md

XSSCOUNT=$(cat /root/github/missing-cve-nuclei-templates/data/type/xss.txt | wc -l)
echo "| XSS | $XSSCOUNT | [xss.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/type/xss.txt) |" >> $ROOTPATH/README.md

RCECOUNT=$(cat /root/github/missing-cve-nuclei-templates/data/type/rce.txt | wc -l)
echo "| RCE | $RCECOUNT | [rce.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/type/rce.txt) |" >> $ROOTPATH/README.md

SQLICOUNT=$(cat /root/github/missing-cve-nuclei-templates/data/type/sqli.txt | wc -l)
echo "| SQL Injection | $SQLICOUNT | [sqli.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/type/sqli.txt) |" >> $ROOTPATH/README.md

LFICOUNT=$(cat /root/github/missing-cve-nuclei-templates/data/type/lfi.txt | wc -l)
echo "| Local File Inclusion | $LFICOUNT | [lfi.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/type/lfi.txt) |" >> $ROOTPATH/README.md

SSRFCOUNT=$(cat /root/github/missing-cve-nuclei-templates/data/type/ssrf.txt | wc -l)
echo "| Server Side Request Forgery | $SSRFCOUNT | [ssrf.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/type/ssrf.txt) |" >> $ROOTPATH/README.md

PROTOPOLLUCOUNT=$(cat /root/github/missing-cve-nuclei-templates/data/type/proto-pollution.txt | wc -l)
echo "| Prototype Pollution | $PROTOPOLLUCOUNT | [proto-pollution.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/type/proto-pollution.txt) |" >> $ROOTPATH/README.md

SMUGGLINGCOUNT=$(cat /root/github/missing-cve-nuclei-templates/data/type/req-smuggling.txt | wc -l)
echo "| Request Smuggling | $SMUGGLINGCOUNT | [req-smuggling.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/type/req-smuggling.txt) |" >> $ROOTPATH/README.md

REDIRECTCOUNT=$(cat /root/github/missing-cve-nuclei-templates/data/type/open-redirect.txt | wc -l)
echo "| Open Redirect | $REDIRECTCOUNT | [open-redirect.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/type/open-redirect.txt) |" >> $ROOTPATH/README.md

XXECOUNT=$(cat /root/github/missing-cve-nuclei-templates/data/type/xxe.txt | wc -l)
echo "| XML External Entity | $XXECOUNT | [xxe.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/type/xxe.txt) |" >> $ROOTPATH/README.md

PATHCOUNT=$(cat /root/github/missing-cve-nuclei-templates/data/type/path-traversal.txt | wc -l)
echo "| Path Traversal | $PATHCOUNT | [path-traversal.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/type/path-traversal.txt) |" >> $ROOTPATH/README.md

SSTICOUNT=$(cat /root/github/missing-cve-nuclei-templates/data/type/ssti.txt | wc -l)
echo "| Server Side Template Injection | $SSTICOUNT | [ssti.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/type/ssti.txt) |" >> $ROOTPATH/README.md

echo "" >> $ROOTPATH/README.md

echo "**Dropdown by year**:" >> $ROOTPATH/README.md

echo "" >> $ROOTPATH/README.md

# YEAR TABLE
echo "| Year | Count | Data |" >> $ROOTPATH/README.md
echo "| - | - | - |" >> $ROOTPATH/README.md

for ((i=1999; i<=2024; i++)); do
    YEARCOUNT=$(cat /root/github/missing-cve-nuclei-templates/data/year/$i.txt | wc -l)
    echo "| $i | $YEARCOUNT | [$i.txt](https://github.com/edoardottt/missing-cve-nuclei-templates/blob/main/data/year/$i.txt) |" >> $ROOTPATH/README.md
done

echo "" >> $ROOTPATH/README.md

# update readme 2
cat "$ROOTPATH/scripts/readme2.txt" >> $ROOTPATH/README.md
