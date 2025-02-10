$apiKey = 'your_automox_api_key'
$headers = @{
    "Authorization" = "Bearer $apiKey"
    "Content-Type" = "application/json"
  }
$body = @"
  {
      "name": "API Creation",
      "refresh_interval": 1440,
      "parent_server_group_id": 23500,
      "ui_color": "#FFFFFF",
      "notes": "2 Policies, White, Force WSUS",
      "enable_os_auto_update": false,
      "enable_wsus": true,
      "wsus_server": "https://myserver.com:8530",
      "policies": [
          18627,
          22645
      ]
  }
  "@
$url = "https://console.automox.com/api/servergroups?o=0000"
Invoke-WebRequest -Method Post -Uri $url -Headers $headers -Body $body
