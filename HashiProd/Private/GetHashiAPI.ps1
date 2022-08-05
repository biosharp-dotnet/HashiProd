

function GetHashiAPI {
    [CmdletBinding()]
    param (
        [Parameter()]
        [string] $Endpoint
    )

    $HASHI_API_BASE_URL = "https://api.releases.hashicorp.com/v1"
    $FinalURL = "$HASHI_API_BASE_URL/$Endpoint"

    Write-Output "`nFinal URL: $FinalURL`n"
    Invoke-RestMethod -Method Get -Uri $FinalURL
}
