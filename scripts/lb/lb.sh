#!/bin/sh

# Script to do a backup of /home and /etc to /backup partition.

echo "LOCAL BACKUP" >> /backup/backup.log
echo "Backup sent to WD USB on:" >> /backup/backup.log
date >> /backup/backup.log
echo "Backing up /home/anonX..." | tee -a /backup/backup.log
sudo rsync --bwlimit=50000 -a -delete /home/anonX/ /backup/ETC_Backup/ 2>&1 | tee $
echo "Backing up /home..." | tee -a /backup/backup.log
sudo rsync --bwlimit=50000 -a -delete /home /backup/HOME_Backup/ 2>&1 | $
echo "-----------------" tee -a /backup/backup.log
echo "- All backup up -" tee -a /backup/backup.log
echo "-----------------" tee -a /backup/backup.log

exit
