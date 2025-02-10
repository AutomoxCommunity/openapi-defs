$apiKey = 'your_automox_api_key'
$headers = @{
    "Authorization" = "Bearer $apiKey"
}
$url = "https://console.automox.com/api/users?o=0000"
Invoke-WebRequest -Method Get -Uri $url -Headers $headers
