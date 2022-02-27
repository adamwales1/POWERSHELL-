# Lab 8

Enable-PSRemoting -Force

get-command *session*
Get-PSSessionConfiguration

Enter-PSSession -ComputerName lon-dc1
get-command *feature*

Get-Help Install-WindowsFeature -full
Get-WindowsFeature -name NLB

Get-WindowsFeature | select name,displayname | Where-Object {$_.displayname -like "network load*"} | Install-WindowsFeature 
Get-WindowsFeature | Where-Object {$_.displayname -like "network load*"} | Install-WindowsFeature # doesn't require select-object

Get-WindowsFeature | Where-Object {$_.displayname -like "network load*"}

exit

Enter-PSSession -ComputerName lon-dc1
Enter-PSSession -ComputerName lon-svr1 # multihop is off by default
exit

Enter-PSSession -ComputerName localhost
notepad # cmd based sessions don't use graphical tools
exit

get-command *adapter*
Get-NetAdapter # use F1
# Get-NetAdapter -Physical 
Invoke-Command -ScriptBlock {Get-NetAdapter -Physical} -ComputerName lon-dc1,lon-svr1


Get-Process | gm
Invoke-Command -ScriptBlock {get-process} -ComputerName lon-dc1 | gm  # note deserialized methods,events not displayed
Invoke-Command -ScriptBlock {get-process -ComputerName lon-dc1 | gm} # not deserialized



$dc = New-PSSession -ComputerName lon-dc1
$dc
Get-Module -PSSession $dc -ListAvailable
import-module -PSSession $dc -name smbshare -prefix DC # imports into shell memory only. Importing, ghosting, cmds as if you were located on different machine (server)
Get-Command -module smbshare
Get-DCSmbShare # shows ghost module imported from DC-1
Get-SmbShare

Get-PSSession
Get-PSSession | Remove-PSSession # closes all outgoing sessions
$dc # note session is closed

netstat -anp tcp # shows incoming sessions
netstat -anp tcp | Select-String -Pattern 'est'
Get-NetTCPConnection -LocalPort 5985 # powershell cmd


$computers = New-PSSession -computername lon-dc1,lon-svr1
$computers

get-module -ListAvailable
get-module -ListAvailable *security*
Get-Command *firewall* -module netsecurity
# Get-NetFirewallRule

Invoke-Command -Session $computers -ScriptBlock {Get-NetFirewallRule -enabled true}
Invoke-Command -Session $computers -ScriptBlock {Get-NetFirewallRule -enabled true} | select-object name,pscomputername

Get-WmiObject -Class win32_logicaldisk -filter 'drivetype=3'
invoke-command -ComputerName lon-dc1,lon-svr1 -ScriptBlock {Get-WmiObject -Class win32_logicaldisk -filter 'drivetype=3'} |
    select-object deviceid,freespace,pscomputername | ConvertTo-Html | Out-File e:\report.html # need to convert as out-file would save as a text doc

# can copy css table fro web (W3schools)


$CSS = @'
<style>
# {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
</style>
'@







