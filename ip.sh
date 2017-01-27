#!/bin/bash

stateArray=`sh start.sh | grep "Name"`
IFS=':' read -a currentState <<< "$stateArray[1]"
stateString=${currentState[1]}
IFS='"' read -a state <<< "$stateString[1]"
while [ "${state[1]}" == "running" ]
do
    aws ec2 describe-instances | grep "PublicIpAddress"
    break
done
