#!/usr/bin/env bash
. nogit/env_info.sh
instances=$(aws ec2 describe-instances --region ${REGION} --output json --filters "Name=tag:env,Values=natgw-work"  --query 'Reservations[*].Instances[*].InstanceId' --output text)
for i in ${instances}
do
 echo ${i}
 aws ec2 reboot-instances --region ${REGION} --instance-id ${i}
done
