$apiKey = 'your_automox_api_key'
$headers = @{ "Authorization" = "Bearer $apiKey" }
$url = 'https://console.automox.com/api/orgs/0000/packages?o=0000&awaiting=1&includeUnmanaged=0'
$response = (Invoke-WebRequest -Method Get -Uri $url -Headers $headers).Content
