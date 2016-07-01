#!/bin/bash

echo "PERL5LIB is $PERL5LIB"

while true ; do
        DT=$(date '+%Y%m%d')

        bin/watch.pl -c Watch2 | tee -a logs/watch2-$DT.out
        sleep 15
done
