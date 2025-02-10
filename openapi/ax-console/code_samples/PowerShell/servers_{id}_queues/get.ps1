$apiKey = 'your_automox_api_key'
$headers = @{ "Authorization" = "Bearer $apiKey" }
$url = "https://console.automox.com/api/servers/123456/queues?o=0000"
$response = (Invoke-WebRequest -Method Get -Uri $url -Headers $headers).Content
