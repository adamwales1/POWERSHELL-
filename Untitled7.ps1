# 26/100
# 20/100   /   20/20   1/5
function Get-SimpleFrac {
    param (
    [int]$num,
    [int]$den
    )


    $Remainder = $den % $num
    $Divresult = $den / $num
    if ($Remainder -eq 0) {return "1/$Divresult"}
        else {
        $StartVal = $num - 1
        while ($StartVal -ge 2) {
            $testdenresult =$den % $StartVal
            $testnumresult = $num % $StartVal
            if ($testdenresult -eq 0 -and $testnumresult -eq 0) {
                $Divresultnum = $num / $StartVal
                $Divresultden = $den / $StartVal
                return "$Divresultnum/$Divresultden"
                }
                $StartVal--
            }
    }
}

Get-SimpleFrac -num 26 -den 100