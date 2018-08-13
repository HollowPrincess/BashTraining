#!/bin/bash
#program with no arguments
#it is a test for a question

counter ()
{
 local let "c1+=$1"
 let "c2+=${1}*2"
}

for i in `seq 1 10`
do
 counter $i
done

echo "counters are $c1 and $c2"
