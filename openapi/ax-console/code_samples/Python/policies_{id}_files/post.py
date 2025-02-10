import requests
url = "https://console.automox.com/api/policies/<policyId>/files?o=<orgId>"

payload = {}
files=[
  ('file',('<filename>',open('/path/to/file','rb'),'application/octet-stream'))
]
# Example: files = [
#    ('file', ('npp.8.6.Installer.x64.exe', open('/Users/<your-user-name>/Downloads/npp.8.6.Installer.x64.exe', 'rb'),
#              'application/octet-stream'))
# ]

headers = {
  'Content-Type': 'multipart/form-data',
  'Accept': 'application/json',
  'Authorization': 'Bearer <apiKey>'
}

response = requests.request("POST", url, headers=headers, data=payload, files=files)

print(response.text)
