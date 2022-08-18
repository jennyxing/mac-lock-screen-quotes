import requests

resp = requests.get('https://quotes.rest/qod?category=life', verify=False)
response = resp.json()
author = response['contents']['quotes'][0]['author']
quote = response['contents']['quotes'][0]['quote']
output_file = open("/Users/jennyx/Documents/mac-lock-screen-quotes/quotesAPIResults.txt","w+") 
output_file.write(quote+" - "+author)
output_file.close()
