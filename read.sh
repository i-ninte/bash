#!/bin/bash
read -p "enter your name" name
if [[ -z ${name} ]]
then 
echo "enetr your name dummy!"
else
echo "welcome ${name} "
fi