function Add-Calculator {
    [CmdletBinding()]
    param (
        [int]$number1,
        [int]$number2
        )
    $sum = $number1 + $number2
    return $sum
}

Add-Calculator -number1 34 -number2 889


function Add-Calculator {
    [CmdletBinding()]
    param (
        [int]$number1,
        [int]$number2
        )
    $sum = $number1 + $number2
    return $sum
}