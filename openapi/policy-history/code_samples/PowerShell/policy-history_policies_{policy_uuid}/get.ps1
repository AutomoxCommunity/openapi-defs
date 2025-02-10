$apiKey = 'your_automox_api_key'
$axOrgUUID = 'your_automox_org_uuid'
$axPolicyUUID = 'your_policy_uuid'
$query = '?org=' + $axOrgUUID
$headers = @{
    "Authorization" = "Bearer $apiKey"
    "Content-Type" = "application/json"
    }
$url = "https://policyreport.automox.com/policy-history/policies/$axPolicyUUID"
$response = (Invoke-WebRequest -Method Get -Uri ($url + $query) -Headers $headers).Content