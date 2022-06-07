# original-sandbox
Scripts to create a Blackboard Learn Original Experience 'sandbox' course for users, based on username input

Edit Sandbox.sh and replace [SIS USERNAME], [SIS PASSWORD], [BLACKBOARD DNS], and [SAAS_ID].
Edit usernames.csv to have one username per row.

course.awk generates the course copy feed file. Change headers and rows accordingly.
membership.awk generates the course membership (instructor based on username)

Run Sandbox.sh, and when completed, it puts a copy of the username file in processed_files.
