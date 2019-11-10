#!/bin/bash

num=1
# '-gt' bolsa 'greater than' ning qisqartilmisi bolup,choq diden menide.
until [ $num -gt 10 ]; do
	eho $sum
	num=$((num + 1))
done