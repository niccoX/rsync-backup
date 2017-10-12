#!/bin/bash

# Script to do a backup of /home and /etc to WD external USB drive.

echo "EXTERNAL BACKUP" >> backup.log
echo "BACKUP sent to WD USB on: " >> backup.log
date >> backup.log
echo "Backing up /etc..." | tee -a /backup/backup.log
sudo rsync -a --delete /etc/ /media/job/WD\ Backup/Etc_Backup 2>&1 | tee $
echo "Backing up /home..." | tee -a /backup/backup.log
sudo rsync -a --delete /home/ /media/joe/WD\ Backup/Home_Backup 2>&1 | tee $
echo "------------------" | tee -a /backup/backup.log
echo "- All backed up! -" | tee -a /backup/backup.log 
echo "------------------" | tee -a /backup/backup.log
cp /backup/backup.log /media/joe/WD\ Backup/

exit
