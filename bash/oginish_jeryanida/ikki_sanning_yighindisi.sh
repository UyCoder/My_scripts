#!/bin/bash
# bu tegkodqa ikki sanni pesh bilen ayrip kirguzse uning yighindisini chiqirip beridu

IFS=","

read -p "Pesh bilen ayrip ikki san kirguzung" num1 num2

num1=${num1//[[:blank:]]/}
num2=${num2//[[:blanl:]]/}

sum=$((num1 + num2))

echo "$num1 + $num2 = $sum"

IFS="$OIFS"

