#!/bin/bash

aws cloudformation create-stack --stack-name kubernetes --region eu-west-1 \
--template-url https://s3-eu-west-1.amazonaws.com/mcallison/cloud_formation/cloudformation-template.json \
--parameters ParameterKey=KeyPair,ParameterValue=aws_key.pem ParameterKey=ClusterSize,ParameterValue=4 ParameterKey=VpcId,ParameterValue=vpc-ac7035c9 ParameterKey=SubnetId,ParameterValue=subnet-9bc7e9fe ParameterKey=SubnetAZ,ParameterValue=eu-west-1a
