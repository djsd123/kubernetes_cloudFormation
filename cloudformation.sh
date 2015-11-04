#!/bin/bash

aws cloudformation create-stack --stack-name kubernetes --region eu-west-1 \
--template-body file://aws/cloudformation-template.json \
--parameters ParameterKey=KeyPair,ParameterValue=<keypair> \
ParameterKey=ClusterSize,ParameterValue=<cluster_size> \
ParameterKey=VpcId,ParameterValue=<vpc_id> \
ParameterKey=SubnetId,ParameterValue=<subnet_id> \
ParameterKey=SubnetAZ,ParameterValue=<subnet_az>
