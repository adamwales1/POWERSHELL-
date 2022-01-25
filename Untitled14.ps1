# Exercise mod 7

# get-command *group* -Module activedirectory

New-ADGroup -Name IPPhoneTest -path 'OU=IT,DC=Adatum,DC=com' -GroupScope Global
$TestUsers = Get-ADUser -filter * | Where-Object {$_.Name -in'Abbi Skinner','Ida Alksne','Parsa Schoonen','Tonia Guthrie'}
Add-ADGroupMember -Identity IPPhoneTest -Members $TestUsers
Get-ADGroupmember -Identity IPPhoneTest












# to find path
Get-ADOrganizationalUnit -Filter * | Select-Object -Property Distinguishedname 







'Abbi Skinner','Ida Alksne','Parsa Schoonen','Tonia Guthrie'