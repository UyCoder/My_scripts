#!/bin/bash

name="ahmet"
# Melum bir funkisiye ichide 'local' bilen qimmet bersek peqet shu funkisiye ichidila kuchke ige bolidu.
demLocal(){
	local mame="alim"
	echo "$name"
	return
}
echo "$name"