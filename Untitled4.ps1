$Cred = Get-Credential






Get-Service | 
    Select-Object Status,StartType,Name | 
    Out-GridView -outputmode single |
    Stop-Service -WhatIf

Get-ADUser -filter * -Properties department |
    Where-Object {$_.department -eq 'sales'} |
    Out-GridView -outputmode Multiple |
    Set-ADUser -department 'marketing'

Get-ADUser -filter * -properties department |
    where-object {$_.department -eq 'marketing'} |
    Select-Object name |
    Out-GridView -OutputMode Multiple