$apiKey = 'your_automox_api_key' $headers = @{
  "Authorization" = "Bearer $apiKey"
  "Content-Type" = "application/json"
  }
$body = @"{
  "name": "string",
  "parent_id": "1c6ca187-e61f-4301-8dcb-0e9749e89eef"
} "@
$url = "https://console.automox.com/api/accounts/{accountId}/zones" $response = (Invoke-WebRequest -Method Post -Uri $url -Headers $headers).Content
