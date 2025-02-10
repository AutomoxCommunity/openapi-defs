$apiKey = 'your_automox_api_key'
$headers = @{ "Authorization" = "Bearer $apiKey" }
$url = "https://console.automox.com/api/events?o=0000&limit=2&startDate=2019-05-04&endDate=2019-05-07"
$response = (Invoke-WebRequest -Method Get -Uri $url -Headers $headers).Content
