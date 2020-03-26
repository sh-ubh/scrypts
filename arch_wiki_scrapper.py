#!/usr/bin/python
# Just a timepass project. This scrypt will search the archwiki for any argument that you pass. 
import sys
import requests
import bs4
res = requests.get('https://wiki.archlinux.org/index.php/' + ' '.join(sys.argv[1:]))
res.raise_for_status()
wiki = bs4.BeautifulSoup(res.text, "html.parser")
for i in wiki.select('p'):
    print(i.getText())
