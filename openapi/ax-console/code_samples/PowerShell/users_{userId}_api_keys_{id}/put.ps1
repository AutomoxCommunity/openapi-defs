$apiKey = 'your_automox_api_key'
$headers = @{ "Authorization" = "Bearer $apiKey" }
$body = @"
{
    "is_enabled": "False"
}
"@
$url = 'https://console.automox.com/api/users/{98765}/api_keys/999999?o=0000&page=0&limit=25'
$response = (Invoke-WebRequest -Method Put -Uri $url -Body $body -Headers $headers -ContentType "application/json").Content
