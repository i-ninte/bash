#!/bin/bash
my_array=("value 1", "value 2",  "value 3")
echo "  ${ my_array[1] }"
echo " ${my_array[@]}"
echo " ${#my_array[@]}

