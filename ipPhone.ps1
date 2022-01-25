



$Testusers = Get-ADGroupMember -Identity IPPhoneTest
foreach ($User in $Testusers)  {
    $Userinfo = Get-ADUser -Identity $User
    $IPPhoneAttribute = $Userinfo.GivenName + '.' + $Userinfo.Surname + '@adatum.com'
    Set-ADUser -Identity $user -Replace @{ipPhone = $IPPhoneAttribute}
}



Get-ADUser -Filter * -Properties * | where-object {$_.Name -eq "abbi skinner"}


