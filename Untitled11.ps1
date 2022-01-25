# Quiz 3.1

function Value-Add {
    param (
        [int[]]$Value
    )
        $Sort = $Value | Sort-Object
        $Calc = ($Sort[0] + $Sort[-1])
        return $Calc


}

Value-Add -Value 85,2,56,33,102,52




Get-service | Sort-Object # sorts values