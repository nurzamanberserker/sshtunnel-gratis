#!/bin/bash
mkdir /root/limit
apt install sqlite3 -y
unzip install.zip
mv autodelete /usr/local/bin/autodelete
chmod 755 /usr/local/bin/autodelete
mv bwsend /usr/local/bin/bwsend
chmod 755 /usr/local/bin/bwsend
mv cekssh /usr/local/bin/cekssh
chmod 755 /usr/local/bin/cekssh
mv cekxray /usr/local/bin/cekxray
chmod 755 /usr/local/bin/cekxray
mv createl /usr/local/bin/createl
chmod 755 /usr/local/bin/createl
mv createssh /usr/local/bin/createssh
chmod 755 /usr/local/bin/createssh
mv createv /usr/local/bin/createv
chmod 755 /usr/local/bin/createv
mv createt /usr/local/bin/createt
chmod 755 /usr/local/bin/createt
mv delexpuser /usr/local/bin/delexpuser
chmod 755 /usr/local/bin/delexpuser
mv hari /usr/local/bin/hari
chmod 755 /usr/local/bin/hari
mv jam /usr/local/bin/jam
chmod 755 /usr/local/bin/jam
mv limitssh /usr/local/bin/limitssh
chmod 755 /usr/local/bin/limitssh
mv listexpssh /usr/local/bin/listexpssh
chmod 755 /usr/local/bin/listexpssh
mv listexpxray /usr/local/bin/listexpxray
chmod 755 /usr/local/bin/listexpxray
mv memberssh /usr/local/bin/memberssh
chmod 755 /usr/local/bin/memberssh
rm -rf /usr/bin/menu
mv menu /usr/bin/menu
chmod 755 /usr/bin/menu
rm -rf /usr/bin/menussh
mv menussh /usr/bin/menussh
chmod 755 /usr/bin/menussh
rm -rf /usr/bin/clog
mv clog /usr/bin/clog
chmod 755 /usr/bin/clog
mv menuxray /usr/bin/menuxray
chmod 755 /usr/bin/menuxray
mv pelanggarxray /usr/local/bin/pelanggarxray
chmod 755 /usr/local/bin/pelanggarxray
mv pelanggarssh /usr/local/bin/pelanggarssh
chmod 755 /usr/local/bin/pelanggarssh
rm -rf /usr/local/bin/ws-stunnel
mv ws-stunnel /usr/local/bin/ws-stunnel
chmod 755 /usr/local/bin/ws-stunnel
mv backuptele /usr/local/bin/backuptele
chmod 755 /usr/local/bin/backuptele
mv restoretele /usr/local/bin/restoretele
chmod 755 /usr/local/bin/restoretele
# cek minacantik apakah ada
if [ ! -d "/var/lib/minacantik" ]; then
  mkdir -p "/var/lib/minacantik"
fi
mv pemakaian.db /var/lib/minacantik/pemakaian.db
echo "*/6 * * * * root jam" >> /etc/crontab
echo "58 23 * * * root hari" >> /etc/crontab
echo "57 2 * * * root autodelete" >> /etc/crontab
echo "*/5 * * * * root bwsend" >> /etc/crontab
echo "*/5 * * * * root limitssh" >> /etc/crontab
echo "*/3 * * * * root delexpuser" >> /etc/crontab
service cron restart
service nginx restart
service xray restart
systemctl stop client-sldns
systemctl disable client-sldns
mkdir .value
