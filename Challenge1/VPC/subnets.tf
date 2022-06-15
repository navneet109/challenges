resource "aws_subnet" "publicsubnet1" {
    
    vpc_id            = aws_vpc.vpcassessment.id
    cidr_block        = var.public_subnet_1
    availability_zone = var.availability_zone_A

    tags              = {
    Name              = "Public Subnet-1"
    }
  
}

output "outputpublicsubnet1" {
  value = aws_subnet.publicsubnet1.id
}


resource "aws_subnet" "publicsubnet2" {
    
    vpc_id            = aws_vpc.vpcassessment.id
    cidr_block        = var.public_subnet_2
    availability_zone = var.availability_zone_B

    tags              = {
    Name              = "Public Subnet-2"
    }
  
}

output "outputpublicsubnet2" {
  value              = aws_subnet.publicsubnet2.id
}

resource "aws_subnet" "web_private_subnet1" {
    
    vpc_id            = aws_vpc.vpcassessment.id
    cidr_block        = var.web_private_subnet_1
    availability_zone = var.availability_zone_A

    tags              = {
    Name              = "Web Private Subnet-1"
    }
  
}

output "outputwebprivatesubnet1" {
  value = aws_subnet.web_private_subnet1.id
}


resource "aws_subnet" "web_private_subnet2" {
    
    vpc_id            = aws_vpc.vpcassessment.id
    cidr_block        = var.web_private_subnet_2
    availability_zone = var.availability_zone_B

    tags              = {
    Name              = "Web Private Subnet-2"

    }
  
}

output "outputwebprivatesubnet2" {
  value = aws_subnet.web_private_subnet2.id
}

resource "aws_subnet" "app_private_subnet1" {
    
    vpc_id            = aws_vpc.vpcassessment.id
    cidr_block        = var.app_private_subnet_1
    availability_zone = var.availability_zone_A

    tags              = {
    Name              = "App Private Subnet-1"
    }
  
}

output "outputappprivatesubnet1" {
  value = aws_subnet.app_private_subnet1.id
}


resource "aws_subnet" "app_private_subnet2" {
    
    vpc_id            = aws_vpc.vpcassessment.id
    cidr_block        = var.app_private_subnet_2
    availability_zone = var.availability_zone_B

    tags              = {
    Name              = "App Private Subnet-2"

    }
  
}

output "outputappprivatesubnet2" {
  value = aws_subnet.app_private_subnet2.id
}

resource "aws_subnet" "db_private_subnet1" {
    
    vpc_id            = aws_vpc.vpcassessment.id
    cidr_block        = var.db_private_subnet_1
    availability_zone = var.availability_zone_A

    tags              = {
    Name              = "DB Private Subnet-1"

    }
  
}

output "outputdbprivatesubnet1" {
  value = aws_subnet.db_private_subnet1.id
}
resource "aws_subnet" "db_private_subnet2" {
    
    vpc_id            = aws_vpc.vpcassessment.id
    cidr_block        = var.db_private_subnet_2
    availability_zone = var.availability_zone_B

    tags              = {
    Name              = "DB Private Subnet-2"

    }
  
}

output "outputdbprivatesubnet2" {
  value = aws_subnet.db_private_subnet2.id
}

resource "aws_db_subnet_group" "rdsubnetgroup" {
    
    name             = "rds_subnet_group"
    subnet_ids       = [aws_subnet.db_private_subnet1.id, aws_subnet.db_private_subnet2.id]

    tags             = {

    name             = "My RDS Subnet Group"
    }
  
}

output "out_rdssubnetgroup" {
  value = aws_db_subnet_group.rdsubnetgroup.id
}