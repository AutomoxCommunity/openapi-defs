$apiKey = 'your_automox_api_key'
$headers = @{
    "Authorization" = "Bearer $apiKey"
    "Content-Type" = "application/json"
}
$body = @"
{
    "device_uuids": [
        "a4603e09-7cab-4e0f-ad6b-c484436e74fc",
        "1a2b3c4d-5e6f-7a8b-9c0d-e1f2a3b4c5d6",
        "7a8b9c0d-e1f2-a3b4-c5d6-e7f8a9b0c1d2"
    ],
    "config": {
        "bypass_consent": true
    }
}
"@
$url = "https://rc.automox.com/api/config/consent/account/{accountUuid}/org/{orgUuid}/device"
Invoke-WebRequest -Method Post -Uri $url -Headers $headers -Body $body
