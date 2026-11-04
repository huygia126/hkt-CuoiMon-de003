# Script: tong_hop.ps1
# Tac gia: Chu Gia Huy
# Ngay tao: 12/06/2007
Write-Host "Dang tao bao cao..."
"=== BAO CAO SU CO WEBSITE ===" > logs/tong_hop.txt 
Get-Content logs/booking.log | Select-String "status=404" >> logs/tong_hop.txt
Get-Content logs/booking.log | Select-String "status=500." | Measure-Object >> logs/tong_hop.txt
Write-Host "Hoan thanh!"
