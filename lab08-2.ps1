

Get-ADUser -Filter * -Properties *
Get-ADUser -Filter * -Properties 'city','department' | Where-Object {$_.city -eq 'London' -and $_.department -eq 'lonit'} |
    Set-ADUser -Department 'LonIT'



function Set-DepartmentName {
param (
    [string]$olddep,
    [string]$newdep,
    [string]$city
)
Get-ADUser -Filter * -Properties city,department |
    Where-Object {$_.city -eq $city -and $_.department -eq $olddep}
    Set-ADUser -Department $newdep
}

Set-DepartmentName -olddep Marketing -newdep LonMarketing -city London


get-aduser -filter {city -eq 'London'} -properties department,city
