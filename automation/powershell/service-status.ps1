#Requires -Version 5.1
<#
.SYNOPSIS
    Consulta o estado de servicos Windows informados pelo nome.
.EXAMPLE
    .\service-status.ps1 -Name Spooler, EventLog
#>
[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [ValidateNotNullOrEmpty()]
    [string[]]$Name
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$validName = '^[A-Za-z][A-Za-z0-9_.-]{0,127}$'
$problemFound = $false
$serviceNames = foreach ($item in $Name) {
    foreach ($part in ($item -split ',')) {
        $trimmed = $part.Trim()
        if ($trimmed) { $trimmed }
    }
}

$report = foreach ($serviceName in $serviceNames) {
    if ($serviceName -notmatch $validName) {
        [Console]::Error.WriteLine("Nome de servico invalido: $serviceName")
        exit 2
    }

    $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue
    if (-not $service) {
        $problemFound = $true
        [PSCustomObject]@{
            Name   = $serviceName
            Status = 'NaoEncontrado'
        }
        continue
    }

    if ($service.Status -ne 'Running') {
        $problemFound = $true
    }

    [PSCustomObject]@{
        Name   = $service.Name
        Status = [string]$service.Status
    }
}

$report | Format-Table -AutoSize

if ($problemFound) {
    exit 1
}

exit 0
