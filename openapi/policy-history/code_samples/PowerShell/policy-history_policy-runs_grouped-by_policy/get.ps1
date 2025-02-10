$apiKey = 'your_automox_api_key'
$axOrgUUID = 'your_automox_org_uuid'
$headers = @{
  "Authorization" = "Bearer $apiKey"
  "Content-Type" = "application/json"
  }
$url = "https://policyreport.automox.com/policy-history/policy-runs/grouped-by/policy?org=$axOrgUUID"
$response = (Invoke-WebRequest -Method Get -Uri $url -Headers $headers).Content
