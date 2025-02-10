$apiKey = 'your_automox_api_key'
$headers = @{ "Authorization" = "Bearer $apiKey" }
$url = "https://console.automox.com/api/users/{98765}/api_keys?o=0000&page=0&limit=25"
$response = (Invoke-WebRequest -Method Get -Uri $url -Headers $headers).Content
