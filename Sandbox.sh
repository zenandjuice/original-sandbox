#!/bin/sh
# takes usernames.csv as input and creates an Original Experience sandbox course for that user

DATE=$(date +"%Y%m%d%H%M%S")

echo -e "\nUploading user file to Blackboard Learn..."

./course.awk usernames.csv | curl -k -H "Content-Type:text/plain" -u [SIS USERNAME]:[SIS PASSWORD] --url https://[BLACKBOARD DNS]u/webapps/bb-data-integration-flatfile-[SAAS ID]/endpoint/course/store  --data-bin @-
./membership.awk usernames.csv | curl -k -H "Content-Type:text/plain" -u [SIS USERNAME]:[SIS PASSWORD] --url https://[BLACKBOARD DNS]u/webapps/bb-data-integration-flatfile-[SAAS ID]/endpoint/membership/store  --data-bin @-

#save a copy of the processed file
echo -e "\nCopying the usernames.csv file into processed_files\n"
cp usernames.csv processed_files/sandbox-$DATE.csv
