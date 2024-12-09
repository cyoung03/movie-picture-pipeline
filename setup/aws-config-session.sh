#!/bin/bash

#add user input for vars 1,23

# Read user input for AWS credentials
read -p "Enter AWS Access Key ID: " aws_access_key_id
read -p "Enter AWS Secret Access Key: " aws_secret_access_key
read -p "Enter AWS Session Token: " aws_session_token

# Assign user input to variables
export AWS_ACCESS_KEY_ID="$aws_access_key_id"
export AWS_SECRET_ACCESS_KEY="$aws_secret_access_key"
export AWS_SESSION_TOKEN="$aws_session_token"

# Set AWS credentials

aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID
aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY
aws configure set region us-east-1
aws configure set output json
aws configure set aws_session_token $AWS_SESSION_TOKEN

echo "AWS credentials set"
aws sts get-caller-identity

