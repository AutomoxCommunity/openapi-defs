$apiKey = 'your_automox_api_key'
$headers = @{
    "Authorization" = "Bearer $apiKey"
    "Content-Type" = "application/json"
  }
$body = @"
  "actions": [
        {
          "action": "patch-now",
          "solutionId": 3674,
          "devices": [2341, 3474, 7263]
        },
        {
          "action": "patch-with-worklet",
          "solutionId": 3676,
          "workletId": 9878,
          "devices": [2341, 3762]
        }
      ]
"@
$url = "https://console.automox.com/api/orgs/{orgID}/remediations/action-sets/{actionSetID}/actions"
Invoke-WebRequest -Method Post -Uri $url -Headers $headers -Body $body
