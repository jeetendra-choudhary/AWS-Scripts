 #!/bin/bash
 # Stop EC2 Single Instance
 # Prerequisite - instanceId script needs to be present before using this command 
 # © Jeetendra Choudhary - www.jeetendra.xyz
aws ec2 stop-instances --instance-ids `sh instanceId.sh | grep "^i"`
