#!/bin/bash
read -p "enter a number" num
while [[ -z ${num} ]]
do
echo " enter a number"
read -p "enter a number" num
done

echo "hi there user "

case $num in 
1)
echo "okay"
;;
2)
echo"bye"
;;
*)
echo " enter a number dummy "
;;
esac