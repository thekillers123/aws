GitUser="thekillers123"
#wget https://github.com/${GitUser}/
if [ "${EUID}" -ne 0 ]; then
echo "You need to run this script as root"
exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
echo "Checking VPS"
IZIN=$( curl http://ipinfo.io/ip | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permintaan Diterima...${NC}"
else
echo -e "${red}Permintaan Ditolak!${NC}";
echo "Hanya untuk pengguna terdaftar"
fi
mkdir /etc/v2ray
mkdir /var/lib/crot-script;
clear
echo "Masukkan Domain Anda, Jika Anda Tidak Memiliki Domain Klik Enter"
echo "Ketikkan Perintah addhost setelah proses instalasi Script Selesai"
read -p "Hostname / Domain: " host
echo "IP=$host" >> /var/lib/crot-script/ipvps.conf
echo "$host" >> /etc/v2ray/domain
#GitUser="syapik96"
#wget https://github.com/${GitUser}/
GitUser="thekillers123"
#wget https://raw.githubusercontent.com/${GitUser}/aws/main/install/ssh-vpn.sh && chmod +x ssh-vpn.sh && screen -S ssh-vpn ./ssh-vpn.sh
wget https://raw.githubusercontent.com/${GitUser}/aws/main/install/hanyassh.sh && chmod +x hanyassh.sh && screen -S hanyassh.sh ./hanyassh.sh
wget https://raw.githubusercontent.com/${GitUser}/aws/main/websocket-python/websocket.sh && chmod +x websocket.sh && screen -S websocket.sh ./websocket.sh
#wget https://raw.githubusercontent.com/${GitUser}/aws/main/install/sstp.sh && chmod +x sstp.sh && screen -S sstp ./sstp.sh
#wget https://raw.githubusercontent.com/${GitUser}/aws/main/install/wg.sh && chmod +x wg.sh && screen -S wg ./wg.sh
#wget https://raw.githubusercontent.com/${GitUser}/aws/main/install/ssr.sh && chmod +x ssr.sh && screen -S ssr ./ssr.sh
#wget https://raw.githubusercontent.com/${GitUser}/aws/main/install/shadowsocksobfs.sh && chmod +x shadowsocksobfs.sh && screen -S ss ./shadowsocksobfs.sh
#wget https://raw.githubusercontent.com/${GitUser}/aws/main/install/ins-vt.sh && chmod +x ins-vt.sh && sed -i -e 's/\r$//' ins-vt.sh && screen -S v2ray ./ins-vt.sh
#wget https://raw.githubusercontent.com/${GitUser}/aws/main/install/ipsec.sh && chmod +x ipsec.sh && screen -S ipsec ./ipsec.sh
rm -f /root/ssh-vpn.sh
rm -f /root/hanyassh.sh
rm -f /root/websocket.sh
rm -f /root/sstp.sh
rm -f /root/wg.sh
rm -f /root/ssr.sh
rm -f /root/shadowsocksobfs.sh
rm -f /root/ins-vt.sh
rm -f /root/go.sh
rm -f /root/ipsec.sh
history -c
echo "1.1" > /home/ver
clear
echo " "
echo "Installation has been completed!!"
echo " "
echo "=================================-Script Mod SL YNTKTS-===========================" | tee -a log-install.txt
echo "" | tee -a log-install.txt
echo "----------------------------------------------------------------------------------" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - OpenSSH                  : 22, 500, X40000"  | tee -a log-install.txt
echo "   - SSH-WS Python OpenSSH    : 100"  | tee -a log-install.txt
echo "   - SSH-WS Python Dropbear   : 69"  | tee -a log-install.txt
echo "   - SSH-WS Python SSL/TLS    : 99"  | tee -a log-install.txt
echo "   - Stunnel4 SSL/TLS         : 443, X30000"  | tee -a log-install.txt
echo "   - Dropbear                 : 143, 109, X50000"  | tee -a log-install.txt
echo "   - Badvpn                   : 7100, 7200, 7300"  | tee -a log-install.txt
echo "   - Nginx                    : 81"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo "   - Timezone                : Asia/Jakarta (GMT +7)"  | tee -a log-install.txt
echo "   - Fail2Ban                : [ON]"  | tee -a log-install.txt
echo "   - Dflate                  : [ON]"  | tee -a log-install.txt
echo "   - IPtables                : [ON]"  | tee -a log-install.txt
echo "   - Auto-Reboot             : [ON]"  | tee -a log-install.txt
echo "   - IPv6                    : [OFF]"  | tee -a log-install.txt
echo "   - Autoreboot On 00.00 GMT +7" | tee -a log-install.txt
echo "   - Installation Log --> /root/log-install.txt"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "------------------------------------------Mod by SL------------------------------------------" | tee -a log-install.txt
echo ""
echo " Reboot 10 Sec"
sleep 10
reboot
