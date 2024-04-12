#!/bin/bash
source .env

echo "Updating config file"
sshpass -p $USER_PASSWORD ssh $USER_NAME@$BOARD_IP "cd $FILE_DIR; python3" < ./updateConfig.py

sleep 1

echo "Config file updated with..."
sshpass -p $USER_PASSWORD ssh $USER_NAME@$BOARD_IP "cd $FILE_DIR; cat config.ini"

sleep 1
echo "Done"