#!/bin/bash
#mkdir -p "/home/$USER/backups"
DAY="$(date +%Y_%m_%d)"
BACKUP="/home/farley/backups/$DAY-backup-CompanyA.tar.gz"
tar -cvpzf $BACKUP /home/farley/backups
