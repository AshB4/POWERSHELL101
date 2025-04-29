
$folder =C: /Users/ash/Desktop/POWERSHELL101/PS101/mod.ps1 
Get-ChildItem -path $folder -Recurse | Remove-Item
#will deletethefile you specify

$folder = C: /Users/ash/Desktop/POWERSHELL101/PS101/mod.ps1 
Get-ChildItem -path $folder -Recurse | Remove-Item |
 Where-Object Name -NE "_yourFilesName.txt" | Remove-It

#moduales are Like Def in python 

#-eq is equal
#-ne is not equal
#-gt is greater than
#-lt is less than
#-le is less than or = to
#-ge is greater than or = to
#these are slow b/c it looks at each file 1 x 1
#-and 
#-like
#-notlike
#-match

