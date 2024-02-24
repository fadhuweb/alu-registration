#!/bin/bash

# Select emails from Students-list_1023.txt and save them to student-emails.txt
awk -F ',' '{print $1}' Students-list_1023.txt > student-emails.txt

echo "Emails of students have been successfully selected and saved to student-emails.txt"

