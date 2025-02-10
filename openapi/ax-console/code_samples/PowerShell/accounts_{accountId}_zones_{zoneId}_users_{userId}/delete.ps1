$apiKey = 'your_automox_api_key' $headers = @{
  "Authorization" = "Bearer $apiKey"
  "Content-Type" = "application/json"
  }
$url = "https://console.automox.com/api/accounts/{accountId}/zones/{zoneId}/users/{userId}" $response = (Invoke-WebRequest -Method Delete -Uri $url -Headers $headers).Content
