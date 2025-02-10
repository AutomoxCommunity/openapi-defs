$apiKey = 'your_automox_api_key'
$headers = @{ "Authorization" = "Bearer $apiKey" }
$url = "https://console.automox.com/api/servers?o=:orgID&page=0&limit=500"
$response = (Invoke-WebRequest -Method Get -Uri $url -Headers $headers).Content
