variable "amis" {
    
    default = "ami-035c5dc086849b5de"
  
}

# RHEL ami: ami-035c5dc086849b5de

variable "instance_type" {

    default = "t2.micro"
  
}

variable "instance_type_internal" {

    default = "t2.medium"
  
}

variable "output_web_sg" {} 
variable "external_alb_sg" {} 
variable "output_bastion_ssh" {}
variable "output_internal_alb_sg" {}

