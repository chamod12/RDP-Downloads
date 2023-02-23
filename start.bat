@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > errormsg.txt 2>&1
net config server /srvcomment:"Windows Server By LittleFox" > errormsg.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > errormsg.txt 2>&1
net user LittleFox 4321?foxy /add >nul
net localgroup administrators LittleFox /add >nul
net user LittleFox /active:yes >nul
net user installer /delete
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant LittleFox:F >nul
ICACLS C:\Windows\installer /grant LittleFox:F >nul
echo Successfully installed! If RDP is dead, rebuild again.
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Failed to retreive NGROK authtoken - check again your authtoken"
echo Username: LittleFox
echo Password: 4321?foxy
echo You can login now!
ping -n 10 127.0.0.1 >nul
