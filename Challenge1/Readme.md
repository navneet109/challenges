# Assessment 1

A 3 tier environment is a common setup. Use a tool of your choosing/familiarity create these resources. Please remember we will not be judged on the outcome but more focusing on the approach, style and reproducibility.
  

# Approach

I will be desiging the infrastuture with one VPC with 8 subnets with combination of private and public for various layers. In addition to that there will be 2 bastion host and 2 NAT gateway in each public Subnet for the admins to have access to the infrastructure. I am also going to create a Auto scaling group across two availbality zones for fault tolerance and high availablity. This approch is not considering Costing. In case we need to consider that, we can use 1 bastion/NAT gateway and 2 private subnet to fit our layers in.

 

# Resources Created?

 1. VPC
 2. Internet gateway
 3. 8 Subnets (2 public for bastion/NAT gateway and 6 private for all 3 layer in 2 AZ's)
 4. Create two Route tables (public for internet and private for the traffic through NAT Gateway)
 5. Create 2 NAT Gateway, one in each Public subnet for HA.
 6. ELB (Internet and the Internal Load balancer)
 7. 2 Auto Scaling group, one for each app layer and web layer
 8. 2 Bastion Host, one each subnet for HA.
 9. Required Security groups for each EC2 as per access requirement.
 9. Multi AZ RDS instance for DR/HA.

# iaac  tool Used 

Terraform

# Steps to spin Architechture

Clone the project 
- `git clone https://github.com/navneet109/challenges.git`

Installing the AWS CLI.
then add AWS API keys to /home/markb/.aws/credentials under default profile
Run "terraform init"
Run "Terraform plan" 
Run "Terraform Apply"


# What else can be done to secure the achutechutre

>Encrypt DB password using KMS keys/Hashicorp Vault
>Use s3 as backend to store tfstate file.
>Use DynamoDB table for maintaing lock on tfstate file.
