#!/bin/bash
#
# check-missing-templates.sh
# 
# https://github.com/edoardottt/missing-cve-nuclei-templates
#
# @author: edoardottt, https://www.edoardoottavianelli.it/
#
# usage: ./check-missing-templates.sh {year} {output-file} - {} means optional
#
# usage:
# $> ./check-missing-templates.sh 2017 missing-templates-2017.txt (starting from 2017 until now)
# $> ./check-missing-templates.sh missing-templates.txt
# without year it just assumes 1999. 
#

echo ""
echo -e "\033[1;35m===== CHECK MISSING NUCLEI TEMPLATES =====\033[0m"
echo ""
echo -e "[ \033[32mSTATUS\033[0m ] Scan started."
echo ""
usage="usage: ./check-missing-templates.sh {year} {output-file} - {} means optional."

######################################
# 	global vars
######################################
NUCLEI_REPO="$HOME/nuclei-templates/"

CVE_REPO="$HOME/github/cve/"

search_for=("Cross-Site Scripting" 
	"Cross Site Scripting" 
	"SQL injection" 
	"local file inclusion" 
	"server side request forgery" 
	"remote code execution" 
	"remote command execution" 
	"command injection" 
	"code injection" 
	"template injection" 
	"prototype pollution" 
	"request smuggling" 
	"open redirect" 
	"XML external entity" 
	"path traversal" 
	"directory traversal" 
	" xxe" 
	" xss" 
	" rce" 
	" ssrf" 
	" ssti" 
	" lfi" 
	"reflected " 
)

pocs=(
	"No PoCs found on GitHub"
	"No PoCs from references"
)


######################################
# 	input check
######################################

re='^[0-9]+$'

if [[ -z "$1" ]];
then
	startyear="1999"
	outputfile=""
else
	if [[ "$1" =~ $re ]] ; then
		if [[ "$1" -lt "1998" || "$1" -ge "2024" ]];
			then
				echo -e "[ \033[31mERROR\033[0m ] enter a valid year (>= 1999 and <= 2023)."
				exit 1
		else
			startyear="$1"
		fi
	else
		startyear="1999"
		outputfile="$1"
	fi
fi

if ! [[ -z "$2" ]]; then
	outputfile="$2"
fi

if ! [[ -z "$outputfile" ]]; then
	rm -rf "$outputfile"
	touch "$outputfile"
fi

# number of CVEs to be analyzed:
cves=$(find $HOME/github/cve -type f -name "*CVE*" | wc -l)

echo "===================================="
echo "> Start year: $startyear"
echo "> Output file: $outputfile"
echo "> CVEs: $cves"
echo "===================================="
echo ""

current_dir=$(pwd)

cd $CVE_REPO && git pull

cd $current_dir

echo -e "[ \033[32mSTATUS\033[0m ] trickest/cve local repo updated."
echo ""

echo -e "[ \033[32mSTATUS\033[0m ] Scanning..."
echo ""

# logic:
# for each cve in trickest/cve:
#	if this cve not present in nuclei-templates:
#		if it contains one of the words in search_for:
#			if it is not a false positive
#				print it

noauth="unauth\|no auth"
juicy="wordpress\|plugin\|php\|packetstorm\|unauth"
packetstorm="packetstorm"
avoid="android\|Product&message=Windows"
count=0
countFound=0

# for each cve in trickest/cve:
for dir in $(ls $CVE_REPO) ; do
	current_year="$CVE_REPO$dir"
    if [[ -d $current_year && "$dir" -ge "$startyear" ]];
    then
    	for cve_file in $(ls $current_year) ; do
    		count=$((count+1))
    		echo -ne "CVEs analyzed: $count | Found: $countFound"\\r

    		current_cve="$current_year/$cve_file"
    		if [ -f $current_cve ];
    		then
    			cve=$(sed 's/.\{3\}$//' <<< "$cve_file")
    			found=$(find "$NUCLEI_REPO" -name "*${cve}*")

				# if this cve not present in nuclei-templates:
    			if [ -z "$found" ]; 
    			then
    				foundExit=false
    				for str in "${search_for[@]}"; do
    					# if we've already found the CVE, just break the loop
    					if [[ $foundExit = true ]];
    					then
    						break
    					fi

    					# if you want to search for juicy CVEs:
    					# - decomment juicy line.
    					# - add && ! -z "$juicycve" to the next if
  						missing=$(cat $current_cve | grep -io "$str")
  						#juicycve=$(cat $current_cve | grep -io "$juicy")
  						#packetpoc=$(cat $current_cve | grep -io "$packetstorm")
  						#unauth=$(cat $current_cve | grep -io "$noauth")
  						ok=$(cat $current_cve | grep -i "$avoid")

						# if it contains one of the words in search_for:   / && ! -z "$unauth" 
  						if [[ ! -z "$missing" && -z "$ok" ]];
  						then
  							countFound=$((countFound+1))
  							foundExit=true
  							echo -en "[ ${cve} ] "
  							missing_to_print="${missing//$'\n'/ }"
  							echo -n "[ $missing_to_print ] "
  							year=${current_year: -4}
  							echo "https://github.com/trickest/cve/blob/main/$year/$cve_file"

  							if [[ ! -z "$outputfile" ]]; then
  								echo -en "[ ${cve} ] " >> $outputfile
  								echo -n "[ $missing_to_print ] " >> $outputfile
  								echo "https://github.com/trickest/cve/blob/main/$year/$cve_file" >> $outputfile
  							fi
						fi
  					done
  				fi
  			fi
  		done
  	fi
done
