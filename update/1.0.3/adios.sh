#!/bin/bash
# ganti config
rm -f /etc/xray/config.json
wget -q "https://raw.githubusercontent.com/Agunxzzz/Mina-Xray-SSH/main/conf/config.json" -O /etc/xray/config.json
chmod +x /etc/xray/config.json
DB="/var/lib/minacantik/pemakaian.db"
data=$(sqlite3 "$DB" "SELECT username FROM user")
for restore in $data
do
protocol=$(sqlite3 "$DB" "SELECT protocol FROM user WHERE username = '$restore';")
uuid=$(sqlite3 "$DB" "SELECT id FROM user WHERE username = '$restore';")

if [ "$protocol" = "vmess" ]; then
sed -i '/#vmess$/a\### '"$restore -"'\
},{"id": "'""$uuid""'","alterId": '"0"',"email": "'""$restore""'"' /etc/xray/config.json

sed -i '/#vmessgrpc$/a\### '"$restore -"'\
},{"id": "'""$uuid""'","alterId": '"0"',"email": "'""$restore""'"' /etc/xray/config.json

fi
if [ "$protocol" = "vless" ]; then
sed -i '/#vless$/a\#& '"$restore -"'\
},{"id": "'""$uuid""'","email": "'""$restore""'"' /etc/xray/config.json
sed -i '/#vlessgrpc$/a\#& '"$restore -"'\
},{"id": "'""$uuid""'","email": "'""$restore""'"' /etc/xray/config.json

fi
if [ "$protocol" = "trojan" ]; then
sed -i '/#trojanws$/a\#! '"$restore -"'\
},{"password": "'""$uuid""'","email": "'""$restore""'"' /etc/xray/config.json
sed -i '/#trojangrpc$/a\#! '"$restore -"'\
},{"password": "'""$uuid""'","email": "'""$restore""'"' /etc/xray/config.json
fi

done
service xray restart > /dev/null 2>&1




# cat /etc/xray/config.json | grep '^#' | cut -d ' ' -f 2 | sort | uniq > .xrayuser
# data=$(cat .xrayuser | sed 's/#[^ ]*//g')
# # echo $data
# for user in $data
# do
# # replace ### $user with ### $user -
# # sed -i "s/### $user/### $user -/g" /etc/xray/config.json
# # sed -i "s/#! $user/#! $user -/g" /etc/xray/config.json
# sed -i "s/'#&' $user/'#&' $user -/g" /etc/xray/config.json
# # echo $user selesai
# done


