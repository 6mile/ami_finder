#!/bin/bash

# Variables
regions=$(aws ec2 describe-regions --output text | cut -f3 | sort)

if [ -z $1 ]; then echo "You must provide a Product ID."; exit 0; fi

echo
echo "============================"
echo "AWS Region | ami_id"
echo "============================"

for i in $regions; 
do 
	echo "$i $(aws ec2 describe-images \
		--owners 'aws-marketplace' \
		--filters "Name=name,Values=*$1*" \
		--query 'sort_by(Images, &CreationDate)[-1].[ImageId] ' \
		--region $i)";
done
echo
