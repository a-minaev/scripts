#!/bin/bash
#tar archiving for logs

tar -czvf /home/alexey/logs_archive/logs_archive_$(date +%Y%m%d_%H%M%S).tar.gz $1 
