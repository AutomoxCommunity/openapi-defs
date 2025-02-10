import requests

url = "https://console.automox.com/api/orgs/{orgID}/remediations/action-sets/upload?source={format}"

payload = {
  'file': 'path/to/file',
  'format': 'format'
}
files=[

]
headers = {
  'Content-Type': 'multipart/form-data',
  'Accept': 'application/json',
  'Authorization': 'Bearer {apiKey}'
}

response = requests.request("POST", url, headers=headers, data=payload, files=files)

print(response.text)
