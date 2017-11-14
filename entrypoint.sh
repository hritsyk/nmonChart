#!/bin/ksh

print "execute graph"

cd /nmonchart33
for f in $(ls /sharedvolume/in/*)
do
        print "processing $f"
        fname=`basename $f`
        echo $fname
./nmonchart   $f   /sharedvolume/html/$fname.html

done
