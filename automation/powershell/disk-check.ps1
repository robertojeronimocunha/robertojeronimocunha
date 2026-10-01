#Requires -Version 5.1
<#
.SYNOPSIS
    Verifica o espaco livre dos volumes fixos.
.DESCRIPTION
    Termina com codigo 1 se algum volume ficar abaixo de -MinFreePercent.
    Nao libera espaco e nao altera disco.
.EXAMPLE
    .\disk-check.ps1 -MinFreePercent 15
.EXAMPLE
    .\disk-check.ps1 -Drive C -MinFreePercent 20
#>
[CmdletBinding()]
param(
    [ValidateRange(1, 99)]
    [int]$MinFreePercent = 15,

    [ValidatePattern('^[A-Za-z]$')]
    [string]$Drive
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

try {
    $filter = 'DriveType = 3'
    if ($Drive) {
        $filter = "DriveType = 3 AND DeviceID = '$($Drive.ToUpper()):'"
    }

    $volumes = @(Get-CimInstance -ClassName Win32_LogicalDisk -Filter $filter)
    if ($volumes.Count -eq 0) {
        [Console]::Error.WriteLine("Nenhum volume fixo encontrado para o filtro informado.")
        exit 2
    }

    $belowThreshold = $false
    $report = foreach ($volume in $volumes) {
        if ($volume.Size -le 0) {
            Write-Warning "$($volume.DeviceID) sem tamanho reportado."
            $belowThreshold = $true
            continue
        }

        $freePercent = [math]::Round(($volume.FreeSpace / $volume.Size) * 100, 1)
        $status = 'OK'
        if ($freePercent -lt $MinFreePercent) {
            $status = 'BAIXO'
            $belowThreshold = $true
        }

        [PSCustomObject]@{
            Drive       = $volume.DeviceID
            FreePercent = $freePercent
            Limit       = $MinFreePercent
            Status      = $status
        }
    }

    $report | Format-Table -AutoSize

    if ($belowThreshold) {
        exit 1
    }

    exit 0
}
catch {
    [Console]::Error.WriteLine("Falha ao verificar disco: $($_.Exception.Message)")
    exit 1
}
