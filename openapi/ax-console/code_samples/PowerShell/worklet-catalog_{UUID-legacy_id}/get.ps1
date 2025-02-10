$apiKey = 'your_automox_api_key' $headers = @{ "Authorization" = "Bearer $apiKey" }

$url = "https://console.automox.com/api/worklet-catalog/10af9475-fd20-4189-bb9c-e1c707ff2670"
# The legacy_id can also be used here, for example `$url = "https://console.automox.com/api/worklet-catalog/123456"`
$response = (Invoke-WebRequest -Method Get -Uri $url -Headers $headers -ContentType "application/json").Content
