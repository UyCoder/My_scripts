#!/bin/bash
# Bu tegkod while jumlisini ogitidu.
san=1

# Bu while jumlisi 1 din 10 ghiche sanlarni chiqiridu.
# '-le' ning menisi 'kichik yaki teng' digenlik bolidi.
while [ $san -le 10 ]; do
	echo $san
	san=$((san + 1))
done

# Bu while jumlisi 1 din 15 giche taq sanlarni chiqiridu.
num=1
while [ $num  -le 20]; do
	if (( ((num % 2)) == 0 )); then
		num=$((num + 1))
		continue
	fi
	
	if ((num >= 15)); then
		break
	fi
	
	echo $num 
	num=$((num + 1))
done
