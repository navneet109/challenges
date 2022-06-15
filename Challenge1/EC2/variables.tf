# EC2 Instances
variable "amis" {
    
    default = "ami-035c5dc086849b5de"
  
}

# RHEL 8 ami: ami-035c5dc086849b5de 

variable "instance_type" {

    default = "t2.nano"
  
}

variable "public_subnet1" {}
variable "public_subnet2" {}
variable "output_bastion_ssh" {}
variable "private_subnet1" {}
variable "private_subnet2" {}
variable "private_subnet3" {}
variable "private_subnet4" {}
variable "web_access_from_nat_prv_sg" {}
variable "web_access_from_nat_pub_sg" {}





