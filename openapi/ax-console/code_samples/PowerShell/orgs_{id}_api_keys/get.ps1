$apiKey = 'your_automox_api_key'
$headers = @{ "Authorization" = "Bearer $apiKey" }
$url = "https://console.automox.com/api/orgs/{0000}/api_keys"
$response = (Invoke-WebRequest -Method Get -Uri $url -Headers $headers).Content
