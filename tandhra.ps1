$prevClipboard = ""
$clipboardFile = "C:/Users/russe/OneDrive/Documents/QP.txt"

while ($true) {
    $currentClipboard = Get-Clipboard
    if ($currentClipboard -ne $prevClipboard) {
        Set-Content -Path $clipboardFile -Value $currentClipboard
        Write-Output $currentClipboard
        # $apiUrl = "http://localhost:3000/copied"
        # $data = @{
        #     clipboard = $currentClipboard
        # }
        # $jsonData = $data | ConvertTo-Json

        # try {
        #     $response = Invoke-RestMethod -Uri $apiUrl -Method Post -ContentType "application/json" -Body $jsonData
        #     Write-Output $response
        # }
        # catch {
        #     Write-Output $_.Exception.Message
        # }

        $prevClipboard = $currentClipboard
    }
    Start-Sleep -Seconds 1
}

