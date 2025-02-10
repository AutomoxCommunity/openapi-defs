$apiKey = 'your_automox_api_key' $headers = @{
  "Authorization" = "Bearer $apiKey"
  "Content-Type" = "application/json"
} $url = "https://console.automox.com/api/data-extracts?o=0000" $body = @”
        {
          "type": "patch-history",
          "parameters": {
            "start_time": '2021-05-28T13:31:57.510Z',
            "end_time": '2021-05-30T06:42:12.117Z'
          }
        }
      ”@
$response = (Invoke-WebRequest -Method Post -Uri $url -Headers $headers -Body $body -ContentType "application/json").Content
