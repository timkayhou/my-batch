# credential.txt
# connect <example.yourdomain.com>
# <your_user_name>
# <your_password>
taskkill -im vpnui.exe -f
"C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client\vpncli.exe" -s < E:\VPN\credential.txt
"C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client\vpnui.exe"
