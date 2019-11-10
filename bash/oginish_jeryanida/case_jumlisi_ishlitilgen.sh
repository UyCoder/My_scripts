#!/bin/bash
# Bu tegkod case jumlisini ishlitishni ogitidu.

# awwal echo andin read ni qisqartip bir qur kod qilinghan.
read -p "qanche yashqa kirdingiz?" yash

case $yash in
[0-4])
	echo "Tehi mektep yeshigha toshmapsiz."
	;;
	
5)
	echo "Yeslige barsingiz bolidiken."
	;;

#Towendiki belgiler 6 din 18 giche degenni bilduridu.
[6-9]|1[0-8]) 
	sinip=$((yash-5))
	echo "Siz hazir $sinip - sinipqa kirsingiz bolidiken."
	;;
	
*)
	echo "Siz mektep yeshidin otup ketipsiz."
	;;
# bu esac bolsa case jumlisining ayaqlashqanliqini bilduridu.
esac 

	
 