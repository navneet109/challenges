
# Public
resource "aws_route_table" "public" {

    vpc_id = aws_vpc.vpcassessment.id
    route {
        cidr_block = var.any_ip
        gateway_id = aws_internet_gateway.gw.id
    }

    tags = {
        Name = "Public Route_Assessment"
    }
  
}

resource "aws_route_table_association" "public1" {

    subnet_id = aws_subnet.publicsubnet1.id
    route_table_id = aws_route_table.public.id

  
}

resource "aws_route_table_association" "public2" {

    subnet_id      = aws_subnet.publicsubnet2.id
    route_table_id = aws_route_table.public.id

  
}




# Private

resource "aws_route_table" "private" {

    vpc_id             = aws_vpc.vpcassessment.id

    route {
        nat_gateway_id = aws_nat_gateway.natgw1.id
        cidr_block     = var.any_ip
    }
    route {
        nat_gateway_id = aws_nat_gateway.natgw2.id
        cidr_block     = var.any_ip
    }
    tags               = {
    Name               = "Private Route_Assessment"
    }
  
}

resource "aws_route_table_association" "private1" {

    subnet_id      = aws_subnet.web_private_subnet1.id
    route_table_id = aws_route_table.private.id

}

resource "aws_route_table_association" "private2" {

    subnet_id      = aws_subnet.web_private_subnet2.id
    route_table_id = aws_route_table.private.id
  
}

resource "aws_route_table_association" "private3" {

    subnet_id      = aws_subnet.app_private_subnet1.id
    route_table_id = aws_route_table.private.id

}

resource "aws_route_table_association" "private4" {

    subnet_id      = aws_subnet.app_private_subnet1.id
    route_table_id = aws_route_table.private.id
  
}

resource "aws_route_table_association" "private5" {

    subnet_id      = aws_subnet.db_private_subnet1.id
    route_table_id = aws_route_table.private.id

}

resource "aws_route_table_association" "private6" {

    subnet_id      = aws_subnet.db_private_subnet2.id
    route_table_id = aws_route_table.private.id
  
}