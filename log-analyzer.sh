#!/bin/bash

echo "Top 5 IP Addresses"
awk '{print $1}' ngnix-logs | sort -n|  uniq -c | sort -nr | awk '{print $2 " - " $1 " requests"}' | head -n 5

echo -e  "\nTop 5 Requested Paths" 
awk '{print $7}' ngnix-logs | sort |  uniq -c | sort -nr | awk '{print $2 " - " $1 " requests"}' | head -n 5

echo -e "\n Top 5 Response status codes"
awk '{print $9}' ngnix-logs | sort | uniq -c | sort -nr | awk '{print $2 " - " $1 " requests"}' | head -n 5

