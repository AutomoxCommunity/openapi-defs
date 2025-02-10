$apiKey = 'your_automox_api_key'
$headers = @{
    "Authorization" = "Bearer $apiKey"
    "Content-Type" = "application/json"
  }
$body = @"
  {
      "devices": [1,2,3],
      "actions": [
        {
          "action": "apply",
          "attribute": "tags",
          "value": ["Tag1", "Tag2"]
        }
      ]
  }
  "@
$url = "https://console.automox.com/api/servers/batch?o=0"
Invoke-WebRequest -Method Post -Uri $url -Headers $headers -Body $body
