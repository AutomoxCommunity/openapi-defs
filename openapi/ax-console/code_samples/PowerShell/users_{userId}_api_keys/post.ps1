$apiKey = 'your_automox_api_key'
$headers = @{ "Authorization" = "Bearer $apiKey" }
$body = @"
  {
    "name": "My Test API Key",
    "expires_at": "2021-12-05T18:21:47+0000"
  }
  "@
$url = 'https://console.automox.com/api/users/{98765}/api_keys/?o=0000'
$response = (Invoke-WebRequest -Method Post -Uri $url -Headers $headers -Body $body -ContentType "application/json").Content
