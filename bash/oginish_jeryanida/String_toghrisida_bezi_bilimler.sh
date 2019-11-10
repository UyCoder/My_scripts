#!/bin/bash
# Bu tegkodta biz string ge alaqidar buyruqlarni oginimiz.

halighan_jumle="U mening ukam"

# Bu buyruq jumle ichidiki herp sanini chiqirip beridu.
echo "Herpsani : ${#halighan_jumle}"

# 2-herpdin keyinki hemmini chiqirip beridu.
echo "${halighan_jumle:2}"

# 2-herpdin 7-herpkiche chiqirip beridu.
echo "${halighan_jumle:2:7}"

#U we bir boshluqtin keyinki hemmini chiqirip beridu.
echo "${halighan_jumle#*U }"

