NAMA : MOHAMAD ALFATIR ANGE
NIM  :05301425082
MATKUL: SISTEM OPERASI

# 🗂 Project 3 – Automatic Backup Script (CMD)

## 🎯 Tujuan
Membuat script batch (.bat) untuk *mencadangkan (backup) folder penting secara otomatis* ke lokasi penyimpanan lain.

Backup ini dibuat menggunakan:
- Command Prompt (CMD)
- Perintah xcopy
- Script batch sederhana

---

# 🟦 1. Menyiapkan Folder Sumber & Tujuan Backup

### 📁 Folder sumber yang ingin dibackup:

C:\MyFiles

### 📁 Folder hasil backup:

C:\Backup

Jika folder Backup belum ada, script akan membuatnya secara otomatis.

---

# 🟦 2. Membuat Script Backup (backup.bat)

Buka *Notepad*, lalu masukkan script berikut:

```bat
@echo off

:: Folder sumber
set src=C:\MyFiles

:: Folder tujuan backup
set dest=C:\Backup

:: Jika folder tujuan belum ada, buat foldernya
if not exist "%dest%" mkdir "%dest%"

:: Proses backup
xcopy "%src%" "%dest%" /E /I /Y

echo ===============================
echo   Backup Berhasil Dilakukan!
echo   File tersimpan di: %dest%
echo ===============================
echo.
pause

Simpan sebagai:

backup.bat


---

🟦 3. Menjalankan Script Backup

Jalankan CMD:

C:\backup.bat

Jika berhasil, CMD akan menampilkan pesan:

Backup Berhasil Dilakukan!

Dan folder C:\Backup akan terisi salinan file dari C:\MyFiles.


---

🟦 4. Penjelasan Perintah XCOPY

Perintah	Fungsi

/E	Menyalin folder + subfolder
/I	Jika tujuan tidak ada, XCOPY anggap folder
/Y	Menghindari konfirmasi overwrite



---

🟦 5. (Opsional) Backup Otomatis Menggunakan Task Scheduler

Jika ingin backup berjalan otomatis:

1. Buka Task Scheduler


2. Create Basic Task


3. Name:

Automatic Backup


4. Trigger: Daily (pilih jam)


5. Action:

Start a Program


6. Program/script:

C:\backup.bat


7. Finish



Backup akan berjalan otomatis sesuai jadwal.


---

🟩 Kesimpulan Project 3

✔ Berhasil membuat script backup otomatis
✔ Folder sumber & tujuan berjalan dengan benar
✔ XCOPY digunakan untuk menyalin semua file
✔ Script berjalan lewat CMD atau Task Scheduler
