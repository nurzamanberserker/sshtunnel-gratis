#!/bin/bash
wget https://tmtunnel.tech/script/link.sh && chmod 755 link.sh
source link.sh
MYIP=$(curl -sS ipv4.icanhazip.com)
red='\e[1;31m'
green='\e[0;32m'
yell='\e[1;33m'
tyblue='\e[1;36m'
NC='\e[0m'
ipku=$(wget -qO- ipinfo.io/ip);
permisi(){
iplist=$(curl -sS https://tmtunnel.tech/iplist | grep $ipku | awk '{print $4}')
if [[ $ipku = $iplist ]]; then
echo -e "\e[32mPermission Accepted...\e[0m"
else
echo -e "\e[31mPermission Denied!\e[0m";
exit 0
fi
}
cekexp(){
timestamp=$(date +%s)
expku=$(curl -sS https://tmtunnel.tech/iplist | grep $ipku | awk '{print $3}')
if [[ $timestamp < $expku ]]; then
echo -e "\e[32mScript Active...\e[0m"
else
echo -e "\e[31mScript expired!\e[0m";
exit 0
fi
}
permisi
cekexp
userip=$(curl -sS https://tmtunnel.tech/iplist | grep $ipku | awk '{print $1}')
echo "Welcome $userip to Mina Xray SSH"

localip=$(hostname -I | cut -d\  -f1)
hst=( `hostname` )
dart=$(cat /etc/hosts | grep -w `hostname` | awk '{print $2}')
if [[ "$hst" != "$dart" ]]; then
echo "$localip $(hostname)" >> /etc/hosts
fi
if [ -f "/root/log-install.txt" ]; then
rm -fr /root/log-install.txt
fi
mkdir -p /etc/xray
mkdir -p /etc/v2ray
touch /etc/xray/domain
touch /etc/v2ray/domain
touch /etc/xray/scdomain
touch /etc/v2ray/scdomain

ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
sysctl -w net.ipv6.conf.all.disable_ipv6=1 >/dev/null 2>&1
sysctl -w net.ipv6.conf.default.disable_ipv6=1 >/dev/null 2>&1

apt install git curl -y >/dev/null 2>&1
apt install python -y >/dev/null 2>&1
echo -e "[ ${green}INFO${NC} ] Aight good ... installation file is ready"
sleep 2


mkdir -p /var/lib/scrz-prem >/dev/null 2>&1
echo "IP=" >> /var/lib/scrz-prem/ipvps.conf


wget -q $link/tools.sh;chmod +x tools.sh;./tools.sh
rm tools.sh
clear

clear
echo "Add Domain for vmess/vless/trojan dll"
echo " "
read -rp "Input ur domain : " -e pp
    if [ -z $pp ]; then
        echo -e "
        Nothing input for domain!
        Then a random domain will be created"
    else
        echo "$pp" > /root/scdomain
	echo "$pp" > /etc/xray/scdomain
	echo "$pp" > /etc/xray/domain
	echo "$pp" > /etc/v2ray/domain
	echo $pp > /root/domain
        echo "IP=$pp" > /var/lib/scrz-prem/ipvps.conf
    fi

clear
#install ssh ovpn
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green      Install SSH / WS               $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
sleep 2
clear
wget $link/ssh-vpn.sh && chmod +x ssh-vpn.sh && ./ssh-vpn.sh
sleep 2
clear
wget $link/nginx-ssl.sh && chmod +x nginx-ssl.sh && ./nginx-ssl.sh


#install ssh ovpn
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green      Install Websocket              $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
sleep 2
clear
wget $link/insshws.sh && chmod +x insshws.sh && ./insshws.sh

#exp

sleep 1
wget -q -O /usr/bin/notramcpu "$link/Menu%20Final/Lain/notramcpu" && chmod +x /usr/bin/notramcpu

cd
#remove log 
#wget -q -O /usr/bin/removelog "https://raw.githubusercontent.com/Agunxzzz/Mina-Xray-SSH/main/log.sh" && chmod +x /usr/bin/removelog
#sleep 1
rm -f /root/ins-xray.sh
rm -f /root/insshws.sh
rm -f /root/xraymode.sh

#xray
wget -q -O ins-xray.sh $link/ins-xray.sh && chmod +x ins-xray.sh && ./ins-xray.sh
sleep 1
wget -q -O senmenu.sh $link/senmenu.sh && chmod +x senmenu.sh && ./senmenu.sh
# wget -q -O slow.sh https://raw.githubusercontent.com/Agunxzzz/Mina-Xray-SSH/main/slow.sh && chmod +x slow.sh && ./slow.sh
#cronjob
#echo "30 * * * * root removelog" >> /etc/crontab

#pemangkuvmessvless
mkdir /root/akun
mkdir /root/akun/vmess
mkdir /root/akun/vless
mkdir /root/akun/shadowsocks
mkdir /root/akun/trojan


#install remove log
echo "0 5 * * * root reboot" >> /etc/crontab
echo "* * * * * root clog" >> /etc/crontab
echo "59 * * * * root pkill 'menu'" >> /etc/crontab
# echo "0 1 * * * root xp" >> /etc/crontab
echo "*/5 * * * * root notramcpu" >> /etc/crontab
service cron restart
clear
org=$(curl -s https://ipapi.co/org )
echo "$org" > /root/.isp

cat> /root/.profile << END
if [ "$BASH" ]; then
if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi
fi
mesg n || true
clear
menu
END
chmod 644 /root/.profile
if [ -f "/root/log-install.txt" ]; then
rm -fr /root/log-install.txt
fi
rm /etc/rsyslog.d/50-default.conf
wget -q -O /etc/rsyslog.d/50-default.conf "https://raw.githubusercontent.com/Agunxzzz/MarXray/main/50-default.conf"
service rsyslog restart
mkdir /root/.value/
mkdir /root/akun/ssh/
wget -q -O /usr/bin/cekip "$link/cekip.sh" && chmod +x /usr/bin/cekip
cd
echo "1.0.0" > versi
clear
rm -f ins-xray.sh
rm -f senmenu.sh
rm -f setupku.sh
rm -f xraymode.sh
wget https://tmtunnel.tech/minacantik/minayang.sh && chmod 755 minayang.sh && ./minayang.sh
apt install bc -y
apt install vnstat -y
rm /root/minayang.sh
rm /etc/nginx/nginx.conf
mv /root/nginx.conf /etc/nginx/nginx.conf
wget -q -O /usr/local/bin/stats "$link/stats.sh" && chmod +x /usr/local/bin/stats
echo "*/3 * * * * root stats" >> /etc/crontab
echo "45 23 * * * root backuptele" >> /etc/crontab
rm -f /usr/bin/menu
wget -q -O /usr/bin/menu "$link/menufinal/menu" && chmod +x /usr/bin/menu
service cron restart
service nginx restart
updatsc
# rm -f slow.sh
echo "Saya Bersaksi Bahwa Myoi Mina dari Twice Adalah Wanita Terindah di Dunia" > bacasaya
echo "I Testify That Myoi Mina from Twice Is The Most Beautiful Woman in the World" > readme
echo "=====================-[   THEMOON ]-===================="
echo ""
echo "------------------------------------------------------------"
echo ""
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - OpenSSH                 : 22, 53, 2222, 2269"  | tee -a log-install.txt
echo "   - SSH Websocket           : 80" | tee -a log-install.txt
echo "   - SSH SSL Websocket       : 443" | tee -a log-install.txt
echo "   - Stunnel5                : 222, 777" | tee -a log-install.txt
echo "   - Dropbear                : 109, 143" | tee -a log-install.txt
echo "   - Badvpn                  : 7100-7300" | tee -a log-install.txt
echo "   - Nginx                   : 81" | tee -a log-install.txt
echo "   - XRAY  Vmess TLS         : 443" | tee -a log-install.txt
echo "   - XRAY  Vmess None TLS    : 80" | tee -a log-install.txt
echo "   - XRAY  Vless TLS         : 443" | tee -a log-install.txt
echo "   - XRAY  Vless None TLS    : 80" | tee -a log-install.txt
echo "   - Trojan GRPC             : 443" | tee -a log-install.txt
echo "   - Trojan WS               : 443" | tee -a log-install.txt
echo "   - Sodosok WS/GRPC         : 443" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo "   - Timezone                : Asia/Jakarta (GMT +7)"  | tee -a log-install.txt
echo "   - Fail2Ban                : [ON]"  | tee -a log-install.txt
echo "   - Dflate                  : [ON]"  | tee -a log-install.txt
echo "   - IPtables                : [ON]"  | tee -a log-install.txt
echo "   - Auto-Reboot             : [ON]"  | tee -a log-install.txt
echo "   - IPv6                    : [OFF]"  | tee -a log-install.txt
echo "   - Autobackup Data" | tee -a log-install.txt
echo "   - AutoKill Multi Login User" | tee -a log-install.txt
echo "   - Auto Delete Expired Account" | tee -a log-install.txt
echo "   - Fully automatic script" | tee -a log-install.txt
echo "   - VPS settings" | tee -a log-install.txt
echo "   - Admin Control" | tee -a log-install.txt
echo "   - Change port" | tee -a log-install.txt
echo "   - Restore Data" | tee -a log-install.txt
echo "   - Full Orders For Various Services" | tee -a log-install.txt
echo ""
echo ""
echo "------------------------------------------------------------"
echo ""
echo "===============-[ Xray+SSH+Free ]-==============="
echo -e ""
echo ""
echo "" | tee -a log-install.txt
echo "ADIOS"
sleep 1
clear
echo -ne "[ ${yell}WARNING${NC} ] Do you want to reboot now ? (y/n)? "
read answer
if [ "$answer" == "${answer#[Yy]}" ] ;then
exit 0
else
reboot
fi
