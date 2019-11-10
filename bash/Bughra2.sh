#!/bin/bash

# bu tegkod kompyuterning bezi melumatlirini chiqirip beridu.
# awazliq ishletkili bolidu.

clear
echo "1. RAM ning uchurliri "
echo "2. Linux ning uchurliri "
echo "3. USB uskunisining uchurliri "
echo "4. IP uchurliri "
echo "5. Qattiq diskining uchurliri "
echo "6. Ayliq kalindar uchuri "
echo "========================================="
echo " "
echo "Lazimliq uchur nomurini kirguzung."
spd-say "essalam eleykum. qandak ehwa. lee. neez.  Bu teg kod nee boog. ra.  go roo pee see  yaz dee. "
read uchur

if [ $uchur -eq 1 ]; then
	clear
	cat /proc/meminfo;
	spd-say "RAM. neen. u. chu. ree. "

elif [ $uchur -eq 2 ]; then
	clear
	cat /proc/version;
	spd-say "Linux neen. u. chu. ree."

elif [ $uchur -eq 3 ]; then
        clear
        lsusb;
	spd-say "USB u. shu. ree."

elif [ $uchur -eq 4 ]; then
        clear
        IP=$(ip addr | grep 'state UP' -A2 | tail -n1 | awk -F'[/ ]+' '{print $3}');
	echo "Sizning ichki IP adresingiz : "
	echo $IP
	echo " "
	echo "Sizning sirtqiy IP adresingiz :"
	curl ifconfig.me;
	spd-say "IP u. chu. ree." 
elif [ $uchur -eq 5 ]; then
        clear
        df -k;
	spd-say "kat. tik. dis. ka. u. chu. ree"

elif [ $uchur -eq 6 ]; then
        clear
        cal
	spd-say "ka. len. dar."

else
	clear
	echo "Hata uchur kirguzdingiz."
	spd-say "Ha. ta. u. chur. keer. gooz. doo. nooz."
fi

