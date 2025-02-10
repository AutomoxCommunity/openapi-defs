$apiKey = 'your_automox_api_key'
$headers = @{
    "Authorization" = "Bearer $apiKey"
    "Content-Type" = "application/json"
}
$url = "https://console.automox.com/api/policies/device-filters-preview?o=9237&page=0&limit=25"
$body = @”
  {
      "device_filters": [
      {
          "field": "os_family",
          "op": "in",
          "value": ["Windows"]
      },
      {
          "field": "hostname",
          "op": "like_any",
          "value": ["WinDev2104Eval"]
      }
      ],
      "server_groups": [102701]
  }
  ”@
$response = (Invoke-WebRequest -Method Post -Uri $url -Headers $headers -Body $body -ContentType "application/json").Content
