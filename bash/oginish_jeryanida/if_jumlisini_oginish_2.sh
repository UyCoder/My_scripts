#!/bin/bash

str1=""
str2="azap"
str3="hoshalliq"


if [ "$str1" ]; then
	echo "$str1 ning qimmiti bar."
fi

if [ -z "$str1" ]; then
	echo "$str1 ning qimmiti yoq"
fi

if [ "$str2" == "str3" ]; then
	echo "$str2 $str3 ge teng."
elif [ "$str2 != "$str3" ]; then
	echo "$str2 $str3 ge teng emes."
fi


if [ "$str2" > "$str3" ]; then
	echo "$str2 bolsa $str3 din chong."

elif [ "$str2" < "$str3"]; then
	echo "$str2 bolsa $str3 din kichik."