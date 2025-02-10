$apiKey = 'your_automox_api_key'
$headers = @{
  "Authorization" = "Bearer $apiKey"
}
$url = "https://console.automox.com/api/orgs/{orgID}/remediations/action-sets/upload"
$form = @{
  "format" = "<your desired format goes here>"
  "file" = Get-Item -Path '<the path to your file goes here>'
}

$response = (Invoke-WebRequest -Method Post -Uri $url -Headers $headers -Form $form).Content
