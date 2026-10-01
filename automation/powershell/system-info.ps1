#Requires -Version 5.1
<#
.SYNOPSIS
    Resume o sistema local sem enviar dados à rede.
.EXAMPLE
    .\system-info.ps1
#>
[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Convert-ToGigabytes {
    param([Parameter(Mandatory = $true)][double]$Bytes)
    return [math]::Round($Bytes / 1GB, 2)
}

try {
    $operatingSystem = Get-CimInstance -ClassName Win32_OperatingSystem
    $computer = Get-CimInstance -ClassName Win32_ComputerSystem
    $processor = Get-CimInstance -ClassName Win32_Processor | Select-Object -First 1
    $volumes = Get-CimInstance -ClassName Win32_LogicalDisk -Filter 'DriveType = 3'

    [PSCustomObject]@{
        Computer     = $computer.Name
        OS           = $operatingSystem.Caption
        Version      = $operatingSystem.Version
        CPU          = $processor.Name
        MemoryGB     = Convert-ToGigabytes -Bytes $computer.TotalPhysicalMemory
    } | Format-List

    $volumeReport = foreach ($volume in $volumes) {
        $freePercent = 0
        if ($volume.Size -gt 0) {
            $freePercent = [math]::Round(($volume.FreeSpace / $volume.Size) * 100, 1)
        }

        [PSCustomObject]@{
            Drive       = $volume.DeviceID
            SizeGB      = Convert-ToGigabytes -Bytes $volume.Size
            FreeGB      = Convert-ToGigabytes -Bytes $volume.FreeSpace
            FreePercent = $freePercent
        }
    }

    $volumeReport | Format-Table -AutoSize
    exit 0
}
catch {
    [Console]::Error.WriteLine("Falha ao coletar informacoes do sistema: $($_.Exception.Message)")
    exit 1
}
