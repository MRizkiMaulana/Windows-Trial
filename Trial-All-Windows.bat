@echo off
setlocal

REM Menentukan versi Windows dan edisinya
for /f "tokens=4-5 delims=[.] " %%i in ('ver') do set "version=%%i.%%j"

echo Detected Windows version: %version%

REM Mendapatkan edisi Windows
for /f "tokens=*" %%i in ('wmic os get caption') do (
    set "edition=%%i"
    goto :ed_found
)
:ed_found
set "edition=%edition:Microsoft Windows =%"

echo Detected Windows edition: %edition%

REM Memilih kunci produk berdasarkan versi dan edisi Windows
if "%version%" == "6.1" (
    if "%edition%"=="7 Professional" (
        set "product_key=FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4"
    ) else if "%edition%"=="7 Professional N" (
        set "product_key=MRPKT-YTG23-K7D7T-X2JMM-QY7MG"
    ) else if "%edition%"=="7 Professional E" (
        set "product_key=W82YF-2Q76Y-63HXB-FGJG9-GF7QX"
    ) else if "%edition%"=="7 Enterprise" (
        set "product_key=33PXH-7Y6KF-2VJC9-XBBR8-HVTHH"
    ) else if "%edition%"=="7 Enterprise N" (
        set "product_key=YDRBP-3D83W-Ty26F-D46B2-XCKRJ"
    ) else if "%edition%"=="7 Enterprise E" (
        set "product_key=C29WB-22CC8-VJ326-GHFJW-H9DH4"
    )
) else if "%version%" == "6.2" (
    if "%edition%"=="8 Pro" (
        set "product_key=NG4HW-VH26C-733KW-K6F98-J8CK4"
    ) else if "%edition%"=="8 Pro N" (
        set "product_key=XCVCF-2NXM9-723PB-MHCB7-2RYQQ"
    ) else if "%edition%"=="8 Enterprise" (
        set "product_key=32JNW-9KQ84-P47T8-D8GGY-CWCK7"
    ) else if "%edition%"=="8 Enterprise N" (
        set "product_key=JMNMF-RHW7P-DMY6X-RF3DR-X2BQT"
    )
) else if "%version%" == "6.3" (
    if "%edition%"=="8.1 Pro" (
        set "product_key=GCRJD-8NW9H-F2CDX-CCM8D-9D6T9"
    ) else if "%edition%"=="8.1 Pro N" (
        set "product_key=HMCNV-VVBFX-7HMBH-CTY9B-B4FXY"
    ) else if "%edition%"=="8.1 Enterprise" (
        set "product_key=MHF9N-XY6XB-WVXMC-BTDCT-MKKG7"
    ) else if "%edition%"=="8.1 Enterprise N" (
        set "product_key=TT4HM-HN7YT-62K67-RGRQJ-JFFXW"
    )
) else if "%version%" == "10.0" (
    if "%edition%"=="10 Pro" (
        set "product_key=W269N-WFGWX-YVC9B-4J6C9-T83GX"
    ) else if "%edition%"=="10 Pro N" (
        set "product_key=MH37W-N47XK-V7XM9-C7227-GCQG9"
    ) else if "%edition%"=="10 Pro for Workstations" (
        set "product_key=NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J"
    ) else if "%edition%"=="10 Pro for Workstations N" (
        set "product_key=9FNHH-K3HBT-3W4TD-6383H-6XYWF"
    ) else if "%edition%"=="10 Pro Education" (
        set "product_key=6TP4R-GNPTD-KYYHQ-7B7DP-J447Y"
    ) else if "%edition%"=="10 Pro Education N" (
        set "product_key=YVWGF-BXNMC-HTQYQ-CPQ99-66QFC"
    ) else if "%edition%"=="10 Education" (
        set "product_key=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2"
    ) else if "%edition%"=="10 Education N" (
        set "product_key=2WH4N-8QGBV-H22JP-CT43Q-MDWWJ"
    ) else if "%edition%"=="10 Enterprise" (
        set "product_key=NPPR9-FWDCX-D2C8J-H872K-2YT43"
    ) else if "%edition%"=="10 Enterprise N" (
        set "product_key=DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4"
    ) else if "%edition%"=="10 Enterprise G" (
        set "product_key=YYVX9-NTFWV-6MDM3-9PT4T-4M68B"
    ) else if "%edition%"=="10 Enterprise G N" (
        set "product_key=44RPN-FTY23-9VTTB-MP9BX-T84FV"
    ) else if "%edition%"=="10 Enterprise LTSC 2021" (
        set "product_key=M7XTQ-FN8P6-TTKYV-9D4CC-J462D"
    ) else if "%edition%"=="10 Enterprise LTSC 2019" (
        set "product_key=M7XTQ-FN8P6-TTKYV-9D4CC-J462D"
    ) else if "%edition%"=="10 Enterprise N LTSC 2021" (
        set "product_key=92NFX-8DJQP-P6BBQ-THF9C-7CG2H"
    ) else if "%edition%"=="10 Enterprise N LTSC 2019" (
        set "product_key=92NFX-8DJQP-P6BBQ-THF9C-7CG2H"
    ) else if "%edition%"=="11 Pro" (
        set "product_key=W269N-WFGWX-YVC9B-4J6C9-T83GX"
    ) else if "%edition%"=="11 Pro N" (
        set "product_key=MH37W-N47XK-V7XM9-C7227-GCQG9"
    ) else if "%edition%"=="11 Pro for Workstations" (
        set "product_key=NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J"
    ) else if "%edition%"=="11 Pro for Workstations N" (
        set "product_key=9FNHH-K3HBT-3W4TD-6383H-6XYWF"
    ) else if "%edition%"=="11 Pro Education" (
        set "product_key=6TP4R-GNPTD-KYYHQ-7B7DP-J447Y"
    ) else if "%edition%"=="11 Pro Education N" (
        set "product_key=YVWGF-BXNMC-HTQYQ-CPQ99-66QFC"
    ) else if "%edition%"=="11 Education" (
        set "product_key=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2"
    ) else if "%edition%"=="11 Education N" (
        set "product_key=2WH4N-8QGBV-H22JP-CT43Q-MDWWJ"
    ) else if "%edition%"=="11 Enterprise" (
        set "product_key=NPPR9-FWDCX-D2C8J-H872K-2YT43"
    ) else if "%edition%"=="11 Enterprise N" (
        set "product_key=DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4"
    ) else if "%edition%"=="11 Enterprise G" (
        set "product_key=YYVX9-NTFWV-6MDM3-9PT4T-4M68B"
    ) else if "%edition%"=="11 Enterprise G N" (
        set "product_key=44RPN-FTY23-9VTTB-MP9BX-T84FV"
    )
) else (
    echo Unsupported Windows version or edition: %version% %edition%
    pause
    exit /b 1
)

echo Using product key: %product_key%

REM Menghapus kunci produk saat ini dari registri
slmgr /upk

REM Membersihkan semua lisensi produk dari registri
slmgr /cpky

REM Memasukkan kunci produk baru ke dalam sistem
slmgr /ipk %product_key%

REM Menetapkan server aktivasi KMS
slmgr /skms kms8.msguides.com

REM Melakukan aktivasi online
slmgr /ato

REM Menampilkan informasi lisensi saat ini
slmgr /dli

pause
