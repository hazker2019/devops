#!/bin/bash

timestamp=$(date "+%F_%H-%M-%S")
FILENAME="medicine_${timestamp}.sql"

sudo apt-get update -qq > /dev/null 2>&1 && \
sudo apt-get install --only-upgrade -y mysql-server > /dev/null 2>&1

sudo mysqldump medicine > "${FILENAME}"

sudo scp -i ~/.ssh/backup_key "${FILENAME}" root@185.75.189.223:/home/backup_sql/
