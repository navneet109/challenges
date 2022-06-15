
# BASTION EC2
resource "aws_instance" "bastion1" {

    ami                         = var.amis
    instance_type               = var.instance_type
    subnet_id                   = var.public_subnet1
    associate_public_ip_address = true
    key_name                    = "myec2key"
    vpc_security_group_ids      = [var.output_bastion_ssh]

    tags                        = {
        Name = "Bastion1_assessment"
    }
 
    
  
}

#for elastic IP

resource "aws_eip" "bastion_eip1" {

    instance                    = aws_instance.bastion1.id
    vpc                         = true
  
}

resource "aws_instance" "bastion2" {

    ami                         = var.amis
    instance_type               = var.instance_type
    subnet_id                   = var.public_subnet2
    associate_public_ip_address = true
    key_name                    = "myec2key"
    vpc_security_group_ids      = [var.output_bastion_ssh]

    tags                        = {
        Name = "Bastion2_assessment"
    }
 
    
  
}

#for elastic IP

resource "aws_eip" "bastion_eip2" {

    instance                    = aws_instance.bastion2.id
    vpc                         = true
  
}
# Private Subnet EC2

resource "aws_instance" "prv_sub_1_instance" {

    ami                         = var.amis
    instance_type               = var.instance_type
    subnet_id                   = var.private_subnet1
    key_name                    = "myec2key"
    vpc_security_group_ids      = [
                                  var.output_bastion_ssh,
                                  var.web_access_from_nat_prv_sg
                                  
    ]
    tags                        = {
        Name                    = "Prv 1 Instance"
    }
  
}

resource "aws_instance" "prv_sub_2_instance" {

    ami                         = var.amis
    instance_type               = var.instance_type
    subnet_id                   = var.private_subnet2
    key_name                    = "myec2key"
    vpc_security_group_ids      = [
                                  var.output_bastion_ssh,
                                  var.web_access_from_nat_prv_sg
                                  
    ]
    tags                        = {
        Name                    = "Prv 2 Instance"
    }
  
}


resource "aws_instance" "prv_sub_3_instance" {

    ami                         = var.amis
    instance_type               = var.instance_type
    subnet_id                   = var.private_subnet3
    key_name                    = "myec2key"
    vpc_security_group_ids      = [
                                  var.output_bastion_ssh,
                                  var.web_access_from_nat_prv_sg
                                  
    ]
    tags                        = {
        Name                    = "Prv 3 Instance"
    }
  
}

resource "aws_instance" "prv_sub_4_instance" {

    ami                         = var.amis
    instance_type               = var.instance_type
    subnet_id                   = var.private_subnet4
    key_name                    = "myec2key"
    vpc_security_group_ids      = [
                                  var.output_bastion_ssh,
                                  var.web_access_from_nat_prv_sg
                                  
    ]
    tags                        = {
        Name                    = "Prv 4 Instance"
    }
  
}
