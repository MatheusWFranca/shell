$parentFolderPath = "C:\d\"
if (!(Test-Path -Path $parentFolderPath)) {
    New-Item -ItemType Directory -Path $parentFolderPath
}
$months = @("01 - January", "02 - February", "03 - March", "04 - April", "05 - May", "06 - June", "07 - July", "08 - August", "09 - September", "10 - October", "11 - November", "12 - December")
foreach ($month in $months) {
    $folderPath = Join-Path -Path $parentFolderPath -ChildPath $month
    if (!(Test-Path -Path $folderPath)) {
        New-Item -ItemType Directory -Path $folderPath
    }
}