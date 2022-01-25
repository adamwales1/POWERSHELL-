# Quiz 4.1

function List-Processes {
    param (
        [string]$GivenLetter
    )
        
        $AllProcesses = (Get-Process | Select-Object -Property name,ID,VirtualMemory)
            foreach ($Filter in $GivenLetter) {
            
            
            }
        
        

        
         






}


Get-Process | select-object -Property -name,ID,VirtualMemory

Get-process | where-object ($_.ccontains -like 'L')