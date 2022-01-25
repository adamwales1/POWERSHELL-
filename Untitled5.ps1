Param (
    [string]$CompuetrName,
    [int]$EventID,
    [string]$LogName
)

# save file to e: drive - can use debug options in tab bar

Get-EventLog -LogName $LogName -computername $ComputerName | 
    Where-Object {$_.EventID -eq $EventID} |
    Select-Object -first 5




[CmdletBinding()]
Param (
    [string]$CompuetrName = (Read-Host "Enter a computer name"),
    [int]$EventID,
    [
    [string]$LogName
)


Write-Verbose "The computer name is $ComputerName"
Write-Debug "This is debugging just before the get-eventlog"

Get-EventLog -LogName $LogName -computername $ComputerName | 
    Where-Object {$_.EventID -eq $EventID} |
    Select-Object -first 5