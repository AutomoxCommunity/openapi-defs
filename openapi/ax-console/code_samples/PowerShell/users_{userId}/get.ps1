$apiKey = 'your_automox_api_key'
$headers = @{
    "Authorization" = "Bearer $apiKey"
}
$url = 'https://console.automox.com/api/users/999999?o=0000'
Invoke-WebRequest -Method Get -Uri $url -Headers $headers
