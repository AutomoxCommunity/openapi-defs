$apiKey = 'your_automox_api_key'
$headers = @{ "Authorization" = "Bearer $apiKey" }
$url = "https://console.automox.com/api/orgs/{orgID}/remediations/action-sets/{actionSetID}/solutions?page=0&solution_type=automox-patch"

$response = (Invoke-WebRequest -Method Get -Uri $url -Headers $headers).Content
