get-service | Where-Object {$_.Status -eq 'Running'} | Format-Table -property Name,StartType,Status
# Cannot pipe a format command as there are no objects or properties in the result of a format - use select-object
Get-Service | gm -MemberType Properties

get-service | 
    Select-Object -property Name,StartType,Status | 
    Where-Object {$_.Status -eq 'Running'} |
    sort-object -Property starttype,name

# Services set to auto but not running: name,starttype,status

Get-Service |
    where-object {$_.Status -ne 'Running' -and $_.Starttype -eq "Automatic"} |
    Select-Object -property Name,Starttype,status

# array of some numbers and each number multiply by 5

[int[]]$numbers =@(3,6,2,56)
[int]$multipler = 5
$numbers | ForEach-Object {$_ * $multipler}

