$apiKey = 'your_automox_api_key'
$headers = @{
  "Authorization" = "Bearer $apiKey"
}

$uri = "https://console.automox.com/api/policies/{id}/files?o=9999"
$contentType = "multipart/form-data"
$boundary = [System.Guid]::NewGuid().ToString()

$filePath = "C:\path_to_your_file"
$fileName = Split-Path -Path $filePath -Leaf

$bytes = [System.IO.File]::ReadAllBytes($filePath)
$encodedFile = [System.Text.Encoding]::GetEncoding('UTF-8').GetString($bytes)

$LF = "`r`n"
$bodyLines = (
  "--$boundary",
  "Content-Disposition: form-data; name=`"file`"; filename=`"$fileName`"",
  "Content-Type: application/octet-stream$LF",
   $fileEnc,
  "--$boundary--$LF"
  ) -join $LF

Invoke-WebRequest -Uri $uri -Method Post -ContentType "$contentType; boundary=`"$boundary`"" -Body $bodyLines -Headers $headers
