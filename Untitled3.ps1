

get-alias foreach
Get-Command foreach

[int[]]$numbers = @(12,4,3,-1,25,121)
foreach ($number in $numbers) {
    [math]::Sqrt($number)
    }

# Calculate for real numbers
[int[]]$numbers = @(12,4,0,3,-1,25,121)
foreach ($number in $numbers) {
    if ($number -ge 0) {[math]::Sqrt($number)}
    }


# creating multiple outputs Can only have 1 if and else
foreach ($number in $numbers) {
    if ($number -ge 100) {[math]::Sqrt($number)}
    elseif ($number -le 10) {$number * 5}
    else {$number}
    }


# checks both at the same time
foreach ($number in $numbers) {
    if ($number -ge 100) {[math]::Sqrt($number)}
    if ($number -le 10) {$number * 5}
    else {$number}
    }



foreach ($number in $numbers) {
    if ($number -ge 100) {[math]::Sqrt($number)}
    elseif ($number -le 10) {$number * 5}
    else {$number}
    }

# Using switch
$menu = @'
1....be happy
2....be rich
'@
write-host $menu
$choice = Read-Host -prompt "Please enter a number"
switch ($choice) {
    1 {write-host ':)'}
    2 {Write-Host '$$$'}
    default {Write-Host 'Please choose 1 or 2'}
    }


for ($count=1; $count -le 10; $count++) {
    write-host "Line number $count"
    }

1..10 | ForEach-Object {
    Write-Host "line number $_"
    }

$array = 1..10
foreach-object ($num in $array) {
    Write-Host "Line number $num"
    }

# using do and until
do { 
    $menu = @'
    1....be happy
    2....be rich
'@
    write-host $menu
    $choice = Read-Host -prompt "Please enter a number"
    switch ($choice) {
    1 {write-host ':)'}
    2 {Write-Host '$$$'}
    default {Write-Host 'Please choose 1 or 2'}
    }
 } until ($choice -in @(1,2))

$menu = @'
1....be happy
2....be rich
'@
write-host $menu
do {
$choice = Read-Host -prompt "Please enter a number"
switch ($choice) {
    1 {write-host ':)'}
    2 {Write-Host '$$$'}
    default {Write-Host 'Please choose 1 or 2'}
    }
} until ($choice -in @(1,2))


$menu = @'
1....be happy
2....be rich
'@
write-host $menu
do {
$counter++
$choice = Read-Host -prompt "Please enter a number"
switch ($choice) {
    1 {write-host ':)'}
    2 {Write-Host '$$$'}
    default {Write-Host 'Please choose 1 or 2'}
    }
} until ($choice -in @(1,2) -or $counter -ge 3)



# Using continue and break- continue removes 'statement' and continues
[int[]]$numbers = @(12,4,3,-1,25,121)
foreach ($number in $numbers) {
    if ($number -ge 100) {[system.math]::Sqrt($number)}
    elseif ($number -le 10) {continue}
    # elseif ($number -le 50) {break}
    $number / 4
    }

# testing to see if prime number. The break stops at first false value rather than continuely calculating
$isprime = $true
$possprime = 18
foreach ($div in @(2..($possprime-1))) {
    $test = $possprime % $div
    if ($test -eq 0) {
        $isprime = $false
        break
    }
 }
 write-host "$possprime, is it a prime? $isprime"



 # import command
 $users = Import-Csv -path E:\users.csv

 # import command converts automatically
 $users = Get-Content -Path E:\users.csv | ConvertFrom-Csv
 $users | gm
 $users | ConvertTo-Json | Out-File e:\users.json
 $users | Export-Clixml -Path E:\users.xml


 $jsonusers = Get-Content E:\users.json | ConvertFrom-Json


 get-content E:\users.csv
 Get-Content e:\users.json
 Get-Content e:\users.xml

 $users
 $jsonusers




