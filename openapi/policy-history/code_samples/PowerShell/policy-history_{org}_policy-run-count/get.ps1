$apiKey = 'your_automox_api_key'
$axOrgUUID = 'your_automox_org_uuid'
$headers = @{
  "Authorization" = "Bearer $apiKey"
  "Content-Type" = "application/json"
  }
$url = "https://policyreport.automox.com/policy-history/policy-run-count/?org=$axOrgUUID&days=7"
$response = (Invoke-WebRequest -Method Get -Uri $url -Headers $headers).Content
