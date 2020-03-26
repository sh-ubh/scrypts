#!/bin/bash 
#this script will find subdomains and store them in list.txt and print their IPs too. 
#NOTE:- It need a index.html file.
grep "href=" index.html | cut -d "/" -f 3 | grep "\." | cut -d '"' -f 1 | sort -u > list.txt
for url in $(cat list.txt); do host $url; done | grep "has address" | cut -d " " -f 4 | sort -u
