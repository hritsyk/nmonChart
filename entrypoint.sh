#!/bin/ksh

print "execute graph"
mkdir /sharedvolume/html
cd /nmonchart33
for f in $(ls /sharedvolume/*.nmon)
do
        print "processing $f"
        fname=`basename $f`
        echo $fname
./nmonchart   $f   /sharedvolume/html/$fname.html

done
