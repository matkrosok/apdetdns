#!/bin/bash
# @name : apdetdns.sh
# @versi : 1.0
# @description : Script sederhana ini mempermudah tugas sysadmin untuk menambahkan database DNS TRUST Postif dari KOMINFO
# @usage :
#       - silahkan edit variabel IP, PATH_NAMED, dan FILE_ZONE
#       - set chmod +x apdetdns.sh
#       - ./apdetdns.sh, setelah selesai restart named
# @writen by : Mbah Diro

IP='x.x.x.x' # address record
PATH_NAMED='Path direktori zone' # default /var/named/ untuk distribusi lain silahkan menyesuaikan
FILE_ZONE='db.situsterlarang.zone' # file zone silahkan menyesuaikan
hari_ini=$(date +%F)

echo -n "Masukkan file update DNS TRUST+, letak file harus dalam path direktori yang sama dengan script apdetdns.sh :"
read filenya

if [ -z "$filenya" ]
        then
        echo "Masukkan filenya terlebih dahulu !";
else
        cp $PATH_NAMED$FILE_ZONE $PATH_NAMED$FILE_ZONE'.backup-'$hari_ini
        awk '{ print $1" IN A '$IP' " }' $filenya >> $PATH_NAMED$FILE_ZONE
        awk '{ print "*."$1" IN A '$IP' " }' $filenya >>  $PATH_NAMED$FILE_ZONE
        echo "Database TRUST+ telah ditambahkan."
fi
