#!/bin/bash
# Script to fetch instance Id
# This can be combined with start and stop instance scripts to start and stop Single Instance.
# Prerequisite AWS CLI Needs to be installed and working.

IDString=`aws ec2 describe-instances | grep "InstanceId"` 
IFS=':' read -a instanceId <<< "$IDString"
IDD=${instanceId[1]}
IFS='"' read -a iID <<< "$IDD"
echo ${iID[1]}
