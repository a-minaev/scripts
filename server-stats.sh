#!/bin/bash
# script to monitor server stats

echo -e "\n Total CPU usage"
top -bn1 | grep "Cpu(s)" | awk '{print "CPU Usage: " $2+$4 "%"}'

echo -e "\n Total Memory usage"
free -m | awk 'NR==2{print "Free Memory: " $2 "MB  Used Memory: " $3 "MB"}'

echo -e "\n Total Disk usage"
df -h --total | awk 'NR==9{print "Available: " $4 "  Used: " $3}'

echo -e "\n Top 5 CPU Processes"
ps -eo pid,ppid,cmd,%cpu --sort=-%cpu | head -n 6

echo -e "\n Top 5 Memory Processes"
ps -eo pid,ppid,cmd,%mem --sort=-%mem | head -n 6 
