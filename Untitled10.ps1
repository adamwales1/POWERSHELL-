# Age in days

function Get-Days {
    [CmdletBinding()]
    param (
        [string]$Dateofbirth
    )
        [datetime]$DOB = $Dateofbirth
        $Days = (New-TimeSpan -Start $DOB)
        return $Days.Days
}
    

get-days -Dateofbirth 'Tuesday, 29 April 1975 12:00:00 AM'



get-command *date*
get-date | gm

get-date  -date "29/04/1975" 
get-command *time*
new-timespan -Start "29/04/1975" -End "25/01/2022"
# value for birthdate
# value for today's date

(New-TimeSpan -Start '29/04/1975' -End $Today)