resource "aws_eip" "natgweip1" {

    vpc = true
  
}

resource "aws_eip" "natgweip2" {

    vpc = true
  
}

resource "aws_nat_gateway" "natgw1" {

    subnet_id     = aws_subnet.publicsubnet1.id
    depends_on    = [aws_internet_gateway.gw]
    allocation_id = aws_eip.natgweip1.id


    tags          = {
    Name          = "NAT gw"
    }

  
}

output "output_natgw1" {
  value          = aws_nat_gateway.natgw1.id
}


resource "aws_nat_gateway" "natgw2" {


    subnet_id     = aws_subnet.publicsubnet2.id
    depends_on    = [aws_internet_gateway.gw]
    allocation_id = aws_eip.natgweip2.id


    tags          = {
    Name          = "NAT gw"
    }

  
}

output "output_natgw2" {
  value          = aws_nat_gateway.natgw2.id
}
