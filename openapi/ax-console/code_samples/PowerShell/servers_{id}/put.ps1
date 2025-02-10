$apiKey = 'your_automox_api_key'
$headers = @{
    "Authorization" = "Bearer $apiKey"
    "Content-Type" = "application/json"
}
$body = @"
{
    "server_group_id": 12345,
    "tags": [
        "Tag1",
        "Tag2",
        "Tag3"
    ],
    "custom_name": null,
    "exception": false
}
"@
$url = "https://console.automox.com/api/servers/123456?o=0000"
Invoke-WebRequest -Method Put -Uri $url -Headers $headers -Body $body
