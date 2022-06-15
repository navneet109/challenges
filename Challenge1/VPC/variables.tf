variable "vpc_cdir_block" {

    default = "10.0.0.0/16"
  
}

variable "public_subnet_1" {

    default = "10.0.1.0/24"
  
}

variable "public_subnet_2" {

    default = "10.0.2.0/24"
  
}


variable "web_private_subnet_1" {

    default = "10.0.3.0/24"
  
}

variable "web_private_subnet_2" {

    default = "10.0.4.0/24"
  
}



variable "app_private_subnet_1" {

    default = "10.0.5.0/24"
  
}

variable "app_private_subnet_2" {

    default = "10.0.6.0/24"
  
}

variable "db_private_subnet_1" {

    default = "10.0.7.0/24"
  
}

variable "db_private_subnet_2" {

    default = "10.0.8.0/24"
  
}
variable "availability_zone_A" {

    default = "eu-west-2a"
  
}


variable "availability_zone_B" {

    default = "eu-west-2b"
  
}

variable "any_ip" {

    default = "0.0.0.0/0"
  
}