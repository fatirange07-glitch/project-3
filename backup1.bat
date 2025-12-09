@echo off
echo =====BACKUP DIMULAI=====

:: Membuat folder backup kalau belum ada mkdir C:\Backup

:: copy semua file dari Documents ke Backup
copy "C:\MyFiles\Documents\*.*" D:\Backup

echo ==== BACKUP SELESAI =====
pause