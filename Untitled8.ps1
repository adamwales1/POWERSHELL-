# Change Case

function ChangeCase {
    param ([string]$InputString)
    [string]$Changedword = ''
    foreach ($Character in $InputString.ToCharArray()) {
        if ($Character -cmatch "[a-z]") {$NewChar = $Character.tostring().toupper()} 
        elseif ($Character -cmatch "[A-Z]") {$NewChar = $Character.tostring().tolower()}
        else {$NewChar = $Character}
        $Changedword = $Changedword + $NewChar # $Changedword += $NewChar is a same same
    }
    return $Changedword
}

ChangeCase -InputString "JaMeS wEb"




[string]$TestVar = 'jytdfud'
$TestVar | gm
$TestVar.ToUpper()
$TestVar[0].ToString().ToUpper()

$Character | gm

