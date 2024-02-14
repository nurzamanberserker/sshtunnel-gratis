#!/bin/bash
source link.sh
export GREEN='\033[0;32m'
NC='\e[0m'
# // config Data
echo -e "${GREEN}Config Data${NC}"
wget -q -O /usr/bin/menuv "$link/Menu%20Final/menuv.sh"
wget -q -O /usr/bin/addv "$link/Menu%20Final/addv.sh"
wget -q -O /usr/bin/cekv "$link/Menu%20Final/cekv.sh"
wget -q -O /usr/bin/delv "$link/Menu%20Final/delv.sh"
wget -q -O /usr/bin/renev "$link/Menu%20Final/renev.sh"
wget -q -O /usr/bin/menul "$link/Menu%20Final/menul.sh"
wget -q -O /usr/bin/addl "$link/Menu%20Final/addl.sh"
wget -q -O /usr/bin/cekl "$link/Menu%20Final/cekl.sh"
wget -q -O /usr/bin/dell "$link/Menu%20Final/dell.sh"
wget -q -O /usr/bin/renel "$link/Menu%20Final/renel.sh"
wget -q -O /usr/bin/xp "$link/xp.sh"
wget -q -O /usr/bin/clog "$link/Menu%20Final/clog.sh"
wget -q -O /usr/bin/addt "$link/Menu%20Final/addt.sh"
wget -q -O /usr/bin/cekt "$link/Menu%20Final/cekt.sh"
wget -q -O /usr/bin/delt "$link/Menu%20Final/delt.sh"
wget -q -O /usr/bin/renet "$link/Menu%20Final/renet.sh"
wget -q -O /usr/bin/menut "$link/Menu%20Final/menut.sh"
wget -q -O /usr/bin/adds "$link/Menu%20Final/adds.sh"
wget -q -O /usr/bin/ceks "$link/Menu%20Final/ceks.sh"
wget -q -O /usr/bin/dels "$link/Menu%20Final/dels.sh"
wget -q -O /usr/bin/renes "$link/Menu%20Final/renes.sh"
wget -q -O /usr/bin/menus "$link/Menu%20Final/menus.sh"
wget -q -O /usr/bin/menussh "$link/Menu%20Final/menussh.sh"
wget -q -O /usr/bin/usern "$link/Menu%20Final/usern.sh"
wget -q -O /usr/bin/menu "$link/Menu%20Final/menu.sh"
#lain-lain
wget -q -O /usr/bin/add-host "$link/Menu%20Final/Lain/add-host.sh"
wget -q -O /usr/bin/domaingratis "$link/domaingratis"
wget -q -O /usr/bin/cek-bandwidth "$link/Menu%20Final/Lain/cek-bandwidth.sh"
wget -q -O /usr/bin/updatsc "$link/update.sh"
wget -q -O /usr/bin/clearlog "$link/Menu%20Final/Lain/clearlog.sh"
wget -q -O /usr/bin/genssl "$link/Menu%20Final/Lain/genssl.sh"
wget -q -O /usr/bin/restartsc "$link/Menu%20Final/Lain/restart.sh"
wget -q -O /usr/bin/running "$link/Menu%20Final/Lain/running.sh"
wget -q -O /usr/bin/cek-speed "$link/Menu%20Final/Lain/speedtes_cli.py"
wget -q -O /usr/bin/cek-trafik "$link/Menu%20Final/Lain/cek-trafik.sh"


chmod +x /usr/bin/menuv
chmod +x /usr/bin/addv
chmod +x /usr/bin/cekv
chmod +x /usr/bin/renev
chmod +x /usr/bin/delv
chmod +x /usr/bin/menul
chmod +x /usr/bin/addl
chmod +x /usr/bin/cekl
chmod +x /usr/bin/renel
chmod +x /usr/bin/dell
chmod +x /usr/bin/xp
chmod +x /usr/bin/clog
chmod +x /usr/bin/menut
chmod +x /usr/bin/addt
chmod +x /usr/bin/cekt
chmod +x /usr/bin/renet
chmod +x /usr/bin/delt
chmod +x /usr/bin/menus
chmod +x /usr/bin/adds
chmod +x /usr/bin/ceks
chmod +x /usr/bin/renes
chmod +x /usr/bin/dels
chmod +x /usr/bin/menussh
chmod +x /usr/bin/usern
chmod +x /usr/bin/menu
#lain
chmod +x /usr/bin/add-host
chmod +x /usr/bin/domaingratis
chmod +x /usr/bin/cek-bandwidth
chmod +x /usr/bin/updatsc
chmod +x /usr/bin/clearlog
chmod +x /usr/bin/genssl
chmod +x /usr/bin/restartsc
chmod +x /usr/bin/running
chmod +x /usr/bin/cek-speed
chmod +x /usr/bin/cek-trafik

echo "selesai bang"
sleep 2
cd
