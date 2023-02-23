@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
net config server /srvcomment:"Windows Azure VM" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
echo Credits: t.me/Whatforusername
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Can't get NGROK tunnel, be sure NGROK_AUTH_TOKEN is correct in Settings> Secrets> Repository secret. Maybe your previous VM still running: https://dashboard.ngrok.com/status/tunnels " 
echo Host: Ngrok Account > Endpoint
echo Username: runneradmin
echo Pass: P@ssw0rd!
curl -o "C:\Users\Public\Desktop\Fast Config VPS.exe" https://github.com/chamod12/RDP-Downloads/blob/main/FastConfigVPS_v5.1.exe > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\tsetup-x64.4.6.2.exe" https://telegram.org/dl/desktop/win64 > out.txt 2>&1




