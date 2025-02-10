$apiKey = 'your_automox_api_key'
$headers = @{ "Authorization" = "Bearer $apiKey" }
$url = "https://console.automox.com/api/orgs/{orgID}/remediations/action-sets?limit=25&page=0&sort=updated_at:desc&status:not_in[]=error&groupBy=configuration_id&groupSort=latest_updated_at:desc&configuration_id:is_set=true&include_all_runs:equals=true"

$response = (Invoke-WebRequest -Method Get -Uri $url -Headers $headers -ContentType "application/json").Content
