$apiKey = 'your_automox_api_key'

$headers = @{ "Authorization" = "Bearer $apiKey" }

$url = 'https://console.automox.com/api/users/{98765}/api_keys/999999?o=0000'

$response = (Invoke-WebRequest -Method Get -Uri $url -Headers $headers -ContentType "application/json").Content
