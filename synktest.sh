#!/bin/bash
result=$(cat /root/Snyk_SpringBoot/output.txt | grep issue | awk ' NR==1 {print $8}')
#echo $result
if [ $result -ne 0 ]
then
        echo "vulnerabilty found.."
        exit 1
else
        echo "no vulnerabilty.."
fi

