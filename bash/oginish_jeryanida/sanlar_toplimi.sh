#!/bin/bash

# sanlar tolimini boshluq bilen ayrip () ichige yazimiz.
fav_num=(3.14 2.178 .57721 4.6692)

echo "Pi : ${fav_num[0]}"

fav_num[4]=1.168

echo "GR : ${fav_num[4]}"

fav_num+=(1 7)

for i in ${fav_num[*]}; do
	echo $i
done