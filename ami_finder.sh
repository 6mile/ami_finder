#!/bin/bash

# Variables
regions=$(aws ec2 describe-regions --output text | cut -f3 | sort)

for i in $regions; 
	do 
		echo "$i $(aws ec2 describe-images --owners 'aws-marketplace' \
			--filters "Name=name,Values=*$1*" \
			--query 'sort_by(Images, &CreationDate)[-1].[ImageId] ' --region $i)";
	done
