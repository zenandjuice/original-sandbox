#!/bin/awk -f

BEGIN {
        FS=",";
        OFS=",";

#prints header row
	print "EXTERNAL_COURSE_KEY,EXTERNAL_PERSON_KEY,ROLE,DATA_SOURCE_KEY";

        }


{
print "sandbox."$1","$1",N,MANUAL"
}
