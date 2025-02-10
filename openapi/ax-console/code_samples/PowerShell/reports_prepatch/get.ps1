$apiKey = 'your_automox_api_key'
$headers = @{ "Authorization" = "Bearer $apiKey" }
$url = 'https://console.automox.com/api/reports/prepatch?o=0000&groupId=12345&limit=10&offset=20'
$response = (Invoke-WebRequest -Method Get -Uri $url -Headers $headers).Content
