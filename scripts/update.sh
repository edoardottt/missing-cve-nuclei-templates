#!/bin/bash

date=$(date +%F)

ROOTPATH="$HOME/github/missing-cve-nuclei-templates"

cd $ROOTPATH

# update local if necessary
git pull

# update CVEs
bash $ROOTPATH/scripts/check-missing-templates.sh $ROOTPATH/data/all.txt

# Generate new README.md with updated stats

### dropdown by vuln type

# xss
rm -rf $ROOTPATH/data/type/xss.txt
cat $ROOTPATH/data/all.txt | egrep --color=never -i "XSS|Cross|Reflected" > $ROOTPATH/data/type/xss.txt

# rce
rm -rf $ROOTPATH/data/type/rce.txt
cat $ROOTPATH/data/all.txt | egrep --color=never -i "command|rce|code" > $ROOTPATH/data/type/rce.txt

# sqli
rm -rf $ROOTPATH/data/type/sqli.txt
cat $ROOTPATH/data/all.txt | egrep --color=never -i "sql" > $ROOTPATH/data/type/sqli.txt

# lfi
rm -rf $ROOTPATH/data/type/lfi.txt
cat $ROOTPATH/data/all.txt | egrep --color=never -i "lfi|local" > $ROOTPATH/data/type/lfi.txt

# ssrf
rm -rf $ROOTPATH/data/type/ssrf.txt
cat $ROOTPATH/data/all.txt | egrep --color=never -i "ssrf|forgery" > $ROOTPATH/data/type/ssrf.txt

# prototype pollution
rm -rf $ROOTPATH/data/type/proto-pollution.txt
cat $ROOTPATH/data/all.txt | egrep --color=never -i "prototype" > $ROOTPATH/data/type/proto-pollution.txt

# request smuggling
rm -rf $ROOTPATH/data/type/req-smuggling.txt
cat $ROOTPATH/data/all.txt | egrep --color=never -i "smuggling" > $ROOTPATH/data/type/req-smuggling.txt

# open redirect
rm -rf $ROOTPATH/data/type/open-redirect.txt
cat $ROOTPATH/data/all.txt | egrep --color=never -i "redirect" > $ROOTPATH/data/type/open-redirect.txt

# xxe
rm -rf $ROOTPATH/data/type/xxe.txt
cat $ROOTPATH/data/all.txt | egrep --color=never -i "xml|xxe" > $ROOTPATH/data/type/xxe.txt

# path traversal
rm -rf $ROOTPATH/data/type/path-traversal.txt
cat $ROOTPATH/data/all.txt | egrep --color=never -i "traversal" > $ROOTPATH/data/type/path-traversal.txt

# ssti
rm -rf $ROOTPATH/data/type/ssti.txt
cat $ROOTPATH/data/all.txt | egrep --color=never -i "ssti|template" > $ROOTPATH/data/type/ssti.txt


### dropdown by year
for ((i=1999; i<=2024; i++)); do
    rm -rf "$ROOTPATH/data/year/$i.txt"
    cat $ROOTPATH/data/all.txt | egrep --color=never -i "CVE-$i" > "$ROOTPATH/data/year/$i.txt"
done


# update readme
bash $ROOTPATH/scripts/update-readme.sh


# update remote
cd $ROOTPATH

git add .
git commit -m "$date - cve update"
git push

# notify
echo "$date missing templates done!" |  ~/.pdtm/go/bin/notify -silent
