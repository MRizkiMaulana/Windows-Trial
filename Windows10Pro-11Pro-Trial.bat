@echo off
REM Menghapus kunci produk saat ini dari registri
slmgr /upk

REM Membersihkan semua lisensi produk dari registri
slmgr /cpky

REM Memasukkan kunci produk baru ke dalam sistem
slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX

REM Menetapkan server aktivasi KMS
slmgr /skms kms8.msguides.com

REM Melakukan aktivasi online
slmgr /ato

REM Menampilkan informasi lisensi saat ini
slmgr /dli

pause
