$apiKey = 'your_automox_api_key'
$headers = @{
    "Authorization" = "Bearer $apiKey"
    "Content-Type" = "application/json"
}
$body = @"
{
    "name": "API Modified",
    "refresh_interval": 1380,
    "parent_server_group_id": 23500,
    "ui_color": "#E9FF03",
    "notes": "3 Policies, Lemonade Color, Force WinUpdate",
    "enable_os_auto_update": false,
  "enable_wsus": false,
    "policies": [
        18627,
        22645,
        25754
    ]
}
"@
$url = "https://console.automox.com/api/servergroups/123456?o=0000"
Invoke-WebRequest -Method Put -Uri $url -Headers $headers -Body $body
