#!/bin/bash
read -p "enter a number corresponding to the days of the week from monday to sunday (1-7)" weekday
echo "${weekday}"
case $weekday in

1)
echo -n "your choice was monday"
;;

2)
echo "your choice was tuesday"
;;
3)
echo "your choice was wednesday"
;;
4)
echo"your choice was thursday"
;;
5)
echo"your choice was friday"
;;
6)
echo"saturday"
;;
7)
echo "sunday"
;;
*)
echo"not a day of the week "
;;
esac
