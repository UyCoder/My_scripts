#!/bin/bash

read -p "Qanche yashqa kirdingiz?  " yash

if [ $yash -ge 16 ]
then
	echo "mashina heydisighiz bolidu."
elif [ $yash -eq 15 ]
then
	echo "Kiler yili heydisingiz bolidu."
else 
	echo "Siz mashina heydisingiz bolmaydu."
fi