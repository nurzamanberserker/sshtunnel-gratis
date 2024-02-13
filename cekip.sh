#!/bin/bash
ipku=$(wget -qO- ipinfo.io/ip);
# download https://tmtunnel.tech/iplist lalu simpan di /root/.iplist
curl -sS https://tmtunnel.tech/iplist > /root/.iplist
permisi(){
iplist=$(cat /root/.iplist | grep $ipku | awk '{print $4}')
if [[ $ipku = $iplist ]]; then
echo -e "\e[32mPermission Accepted...\e[0m"
else
echo -e "\e[31mPermission Denied!\e[0m";
exit 0
fi
}
cekexp(){
timestamp=$(date +%s)
expku=$(cat /root/.iplist | grep $ipku | awk '{print $3}')
if [[ $timestamp < $expku ]]; then
echo -e "\e[32mScript Active...\e[0m"
else
echo -e "\e[31mScript expired!\e[0m";
exit 0
fi
}
permisi
cekexp
clear
