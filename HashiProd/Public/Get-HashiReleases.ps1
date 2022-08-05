

Function Get-HashiReleases {
    <#
    .SYNOPSIS
        Returns Hello world
    .DESCRIPTION
        Returns Hello world
    .EXAMPLE
        PS> Get-HelloWorld

        Runs the command
    #>

    [CmdletBinding()]
    param (
        # Parameter description can go here or above in format: .PARAMETER  <Parameter-Name>
        [Parameter()]
        [string]$Product
    )


    GetHashiAPI -Endpoint "releases/$Product"
}

# Get-HashiReleases -Product "nomad" | Select-Object { $_.version }
