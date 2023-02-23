@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > errormsg.txt 2>&1
del /f "C:\Program Files\Unity Hub\Unity Hub.exe" > errormsg.txt 2>&1
del /f ""C:\Program Files\R\R-4.2.2\bin\x64\Rgui.exe" > errormsg.txt 2>&1
net config server /srvcomment:"Windows Server By Disala" > errormsg.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > errormsg.txt 2>&1
net user Disala Disala@Sub /add >nul
net localgroup administrators Disala /add >nul
net user Disala /active:yes >nul
net user installer /delete
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant LittleFox:F >nul
ICACLS C:\Windows\installer /grant LittleFox:F >nul
echo Successfully installed! If RDP is dead, rebuild again.
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Failed to retreive NGROK authtoken - check again your authtoken"
echo Username: Disala
echo Password: Disala@Sub
echo You can login now!
ping -n 10 127.0.0.1 >nul
