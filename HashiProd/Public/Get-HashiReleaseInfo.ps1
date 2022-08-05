

Function Get-HashiReleaseInfo {
    <#
    .SYNOPSIS
        Returns Hello world
    .DESCRIPTION
        Returns Hello world
    .EXAMPLE
        PS> Get-HashiReleaseInfo -Product nomad -Version 1.3.0

        Runs the command
    #>

    [CmdletBinding()]
    param (
        # Parameter description can go here or above in format: .PARAMETER  <Parameter-Name>
        [Parameter()]
        [string]$Product,

        # Parameter description can go here or above in format: .PARAMETER  <Parameter-Name>
        [Parameter()]
        [string]$Version

    )


    GetHashiAPI -Endpoint "releases/${Product}/${Version}"
}

# Get-HashiReleaseInfo -Product nomad -Version 1.3.0
