#!/bin/awk -f

BEGIN {
        FS=",";
        OFS=",";

#prints header row
	print "EXTERNAL_COURSE_KEY,COURSE_ID,COURSE_NAME,AVAILABLE_IND,TERM_KEY,DATA_SOURCE_KEY";

        }


{
print "sandbox."$1",sandbox."$1",Sandbox Course (sandbox."$1"),Y,DEV,DEV"
}
