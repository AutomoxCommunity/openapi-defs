$apiKey = 'your_automox_api_key' $headers = @{
    "Authorization" = "Bearer $apiKey"
    "Content-Type" = "application/json"
  }
$body = @{
  command_type_name = "InstallUpdate"
  args = "2e7e5661-f7c8-4a21-a65a-52d0fdf8841a"
  }
$url = "https://console.automox.com/api/servers/123456/queues?o=0000" Invoke-WebRequest -Method Post -Uri $url -Headers $headers -Body ($body | ConvertTo-Json)
