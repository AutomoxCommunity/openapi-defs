$apiKey = 'your_automox_api_key' $headers = @{
  "Authorization" = "Bearer $apiKey"
  "Content-Type" = "application/json"
  }
$url = "https://console.automox.com/api/accounts/{accountId}/rbac-roles" $response = (Invoke-WebRequest -Method Get -Uri $url -Headers $headers).Content
