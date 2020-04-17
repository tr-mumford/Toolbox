$Hash1 = Get-FileHash C:\Users\user\Desktop\a.txt -Algorithm MD5 
$Hash2 = Get-FileHash C:\Users\user\Desktop\c.txt -Algorithm MD5

Write-Host "1: " $Hash1.Hash
Write-Host "2: " $Hash2.Hash

if ($Hash1.Hash -ne $Hash2.Hash) {
    Write-Host "Files do not match"
}
else {
    Write-Host "Files do match"
}
