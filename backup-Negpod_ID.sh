#!/bin/bash

# Details about the remote server
host="64293e56bc62.3a2627c1.alu-cod.online"
username="64293e56bc62"
password="328d3b338a4ced526c9a"
backup_location="/summative/1023-2024j"

# Directory to be backed up
directory_to_backup="negpod_id-q1"

# Backup the directory to the remote server
scp -r "$directory_to_backup" "$username"@"$host":"$backup_location"

echo "Directory $directory_to_backup backed up to $host:$backup_location successfully."
