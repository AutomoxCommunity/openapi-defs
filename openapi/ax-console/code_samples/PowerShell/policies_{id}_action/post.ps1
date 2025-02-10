$apiKey = 'your_automox_api_key'
$headers = @{ "Authorization" = "Bearer $apiKey" }

$url = "https://console.automox.com/api/policies/12345/action?o=0000"
$body = @{
      "action" = "remediateAll"
}
Invoke-WebRequest -Method POST -Uri $url -Headers $headers -Body $body
