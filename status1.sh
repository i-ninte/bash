#!/bin/bash
#script that returns the current server status

function memory_check(){
 echo""
 
  
 free -h 
 echo""
}



#function ram_check(){
#echo " the ram space left is"
#echo ""
#grep MemTotal
#}
#ram_check


function disk_usage(){
 echo""
 echo" the disk usage is :"
 df -T
}


function cpu_usage(){
 echo""
 uptime
 echo ""
}


function kernel_version(){

 echo ""
 uname -r
}

function all_checks(){
 memory_check
 disk_usage
 cpu_usage
 kernel_version
}
all_checks