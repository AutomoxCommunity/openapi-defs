$apiKey = 'your_automox_api_key'
$axOrgUUID = 'your_automox_organization_uuid'
$date = '2024-09-05'
$query = '?date=' + $date
$headers = @{
  "Authorization" = "Bearer $apiKey"
  "Content-Type" = "application/json"
  "x-ax-organization-uuid" = "$axOrgUUID"
  }
$url = "https://console.automox.com/api/audit-service/v1/orgs/$axOrgUUID/events"
$response = (Invoke-WebRequest -Method Get -Uri ($url + $query) -Headers $headers).Content