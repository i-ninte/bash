#!bin/bash
#script that returns the current server status
server_name = $(hostname)
echo $server_name
function memory_check(){
echo""
echo" the current memory usage on ${server_name} is: "

free -h 
echo""
}
memory_check


function ram_check(){
echo " the ram space left is"
echo ""
'grep MemTotal'
}
ram_check


function disk_usage(){
echo""
echo" the disk usage is :"
'df-T'
}
disk_usage

function cpu_usage(){
echo""
'mpstat'
}
cpu_usage

 function kernel_version(){

echo ""
'uname-r'
}
kernel_version