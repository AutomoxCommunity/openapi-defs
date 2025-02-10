$apiKey = 'your_automox_api_key'
$headers = @{ "Authorization" = "Bearer $apiKey" }
$url = "/api/orgs/{orgID}/remediations/action-sets/{actionSetID}"

$response = (Invoke-WebRequest -Method Delete -Uri $url -Headers $headers).Content
