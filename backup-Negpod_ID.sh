#!/bin/bash

# Backup directory to remote server
rsync -avz -e "sshpass -p '328d3b338a4ced526c9a' ssh -o StrictHostKeyChecking=no" negpod_id-q1/ 64293e56bc62@64293e56bc62.3a2627c1.alu-cod.online:/summative/1023-2024j
echo "Directory backed up to remote server successfully!"

