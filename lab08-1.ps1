New-ADOrganizationalUnit -Name London -path 'dc-Adatum,dc=com'
New-ADGroup -GroupScope global -Name 'London Admins'
New-ADUser -Name 'Ty Carlson'
Add-ADGroupMember 'London Admins' -Members 'Ty Carlson'

Get-ADGroupMember 'London Admins'

New-ADComputer -Name 'LON-CL2'

Move-ADObject -Identity 'Ty Carlson' -TargetPath 'ou=London,dc=Adatum,dc=com'
Move-ADObject -Identity 'London Admins' -TargetPath 'ou=London,dc=Adatum,dc=com'
Move-ADObject -Identity 'LON-CL2' -TargetPath 'ou=London,dc=Adatum,dc=com'

$identities = 'Ty Carlson','London Admins','LON-CL2'
foreach ($identity in $identities) {
    $adobject = Get-ADObject -Filter {name -eq $identity}
    Move-ADObject -Identity $adobject -TargetPath 'ou=London,dc=Adatum,dc=com'
    }

Get-ADObject -Filter {name -eq 'ty carlson'}