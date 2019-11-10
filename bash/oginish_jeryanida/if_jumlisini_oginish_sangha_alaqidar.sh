#!/bin/bash

read -p "Melum bir sanni kirguzung:  " num

if ((num = 10)); then
	echo "sizning saningiz 10 iken."
fi

if ((num > 10)); then
	echo "10 din kichik san kirguzupsiz."
else 
	echo"10 din chong san kirguzupsiz."
fi

if (( ((num % 2)) == 0)); then
	echo "Jup san kirguzupsiz."
fi 

if (( ((num > )) && ((num < 11)) )); then
	echo "kirguzginingiz $num bolup, 0 bilen 10 arisida iken."
fi 

# 'sam_file ni qurup andin nanoda ach degenlik' bolidu.
touch sam_file && nano sam_file

# 'eger sam_dir bolmisa uni qur' degenlik bolidu.
[ -d sam_dir ]  || mkdir sam_dir