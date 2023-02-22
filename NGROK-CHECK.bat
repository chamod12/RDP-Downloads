@echo off
echo Credits: t.me/Whatforusername
echo Host: Ngrok Account > Endpoint
echo Username: runneradmin
echo Pass: P@ssw0rd!
curl -o "C:\Users\Public\Desktop\Fast Config VPS.exe" https://github.com/chamod12/RDP-Downloads/blob/main/FastConfigVPS_v5.1.exe > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\tsetup-x64.4.6.2.exe" https://telegram.org/dl/desktop/win64 > out.txt 2>&1
# The protocol (http, https, etc) of the forwarded service
PROTO=$1

# The address of the forwarded service
ADDR=$2

# Hack JSON out of the web interface bootstrap
json=$(curl -s localhost:4040/inspect/http \
  | grep -oP 'window.common[^;]+' \
  | sed 's/^[^\(]*("//' \
  | sed 's/")\s*$//' \
  | sed 's/\\"/"/g')

# Parse JSON for the URLs matching the configured `$ADDR`
hosts=$(echo $json \
  | jq -r ".Session.Tunnels \
    | values \
    | map(select(.Config.addr == \"$ADDR\") | .URL) | .[]")

echo "$hosts" | grep "^${PROTO}:"




