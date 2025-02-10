$apiKey = 'your_automox_api_key' $headers = @{ "Authorization" = "Bearer $apiKey" }
$url = "https://console.automox.com/api/worklet-catalog?page=0&limit=25&sort=name:asc&q=dbeaver,community
$response = (Invoke-WebRequest -Method Get -Uri $url -Headers $headers -ContentType "application/json").Content
