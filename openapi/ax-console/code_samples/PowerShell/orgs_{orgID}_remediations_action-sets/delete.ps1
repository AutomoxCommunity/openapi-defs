$apiKey = 'your_automox_api_key'
$headers = @{
    "Authorization" = "Bearer $apiKey"
    "Content-Type" = "application/json"
}
$url = "https://console.automox.com/api/orgs/{orgID}/remediations/action-sets"
$body = @"
{
  "ids": [
    123456,
    789012
  ]
}
"@
Invoke-WebRequest -Method Delete -Uri $url -Headers $headers -Body $body
