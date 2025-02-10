$apiKey = 'your_automox_api_key'
$headers = @{ "Authorization" = "Bearer $apiKey" }
$url = "https://console.automox.com/api/servers/123456?o=0000"
Invoke-WebRequest -Method Delete -Uri $url -Headers $headers
