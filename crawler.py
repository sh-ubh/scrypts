import requests
from datetime import datetime

start=datetime.now()

def request(url):
	try:
		return requests.get("https://" + url)
	except requests.exceptions.ConnectionError:
		pass

target_url = "google.com"
#subdomain_list = []
with open("common.txt","r") as wordlist_file:
	for line in wordlist_file:
		word = line.strip()
		test_url = word + "/" + target_url
		response = request(test_url)
		if response :
			print ("[+] Discovered subdomain ----> "+test_url)
			#subdomain_list.append(test_url)
		    
file.close()

stop=datetime.now()

totaltime=stop-start
print ("\n[***]TotalTimeTaken = " + totaltime)
