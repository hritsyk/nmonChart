#!/bin/ksh

print "execute graph"
mkdir /sharedvolume/html
mkdir /nmonchart
tar -xf nmonchart33.tar -C /nmonchart
cd /nmonchart
for f in $(ls /sharedvolume/*.nmon)
do
        print "processing $f"
        fname=`basename $f`
        echo $fname
./nmonchart   $f   /sharedvolume/html/$fname.html

done
