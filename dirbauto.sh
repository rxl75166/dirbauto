#!/bin/bash
echo "starting..."

echo -e "\e[94mEnter the org name: \e[0m"
read org
mkdir $org
echo -e "\e[94mEnter the root domain link: \e[0m"
read domain_link

cat $domain_link | while read url;
do
dirsearch -l "$domain_link" -o /home/kali/dirbauto/$org/$org.txt
done
