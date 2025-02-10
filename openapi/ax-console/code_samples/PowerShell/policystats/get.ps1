$apiKey = 'your_automox_api_key'
$headers = @{ "Authorization" = "Bearer $apiKey" }
$url = "https://console.automox.com/api/policystats?o=0000"
Invoke-WebRequest -Method GET -Uri $url -Headers $headers
