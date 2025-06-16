#!/usr/bin/bash
echo "###########################################"
echo "Creating S3 bucket"
echo "###########################################"
aws s3api create-bucket --bucket day-2-tfstate-bucket-for-tf  --region us-east-1

echo "###########################################"
echo "Enabling versioning on S3 bucket"
echo "###########################################"
aws s3api put-bucket-versioning --bucket day-2-tfstate-bucket-for-tf --versioning-configuration Status=Enabled

echo "###########################################"
echo "Creating DynamoDB table for Terraform state locking"
echo "###########################################"
aws dynamodb create-table \
    --table-name day-2-terraform-locks \
    --attribute-definitions AttributeName=LockID,AttributeType=S \
    --key-schema AttributeName=LockID,KeyType=HASH \
    --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5
