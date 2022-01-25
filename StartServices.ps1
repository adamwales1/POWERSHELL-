

$ServiceNames = Get-Content E:\services.txt
foreach ($Service in $ServiceNames) {
    $Serviceinfo = get-service -name $Service
    if ($Serviceinfo.Status -eq 'Running') {write-host "$Service, No action required"}
    else {
        start-service -Name $Service
        write-host "$Service, Service was started"
    }
}
