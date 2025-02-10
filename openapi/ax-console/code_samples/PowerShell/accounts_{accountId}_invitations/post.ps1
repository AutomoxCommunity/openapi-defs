$apiKey = 'your_automox_api_key'
$headers = @{
  "Authorization" = "Bearer $apiKey"
  "Content-Type" = "application/json"
  }
$body = @" {
  "email": "string",
  "account_rbac_role": "global-admin",
  "zone_assignments": [
    {
      "zone_id": "string",
      "rbac_role": "zone-admin"
    }
  ]
}
"@
$url = "https://console.automox.com/api/accounts/{accountId}/invitations"

$response = (Invoke-WebRequest -Method Post -Uri $url -Headers $headers -Body $body).Content
