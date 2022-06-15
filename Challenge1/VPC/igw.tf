resource "aws_internet_gateway" "gw" {
        vpc_id = aws_vpc.vpcassessment.id

        tags   = {
        Name   = "Internet Gateway_Assessment"
        }
  
}

output "output_igw" {
  value          = aws_internet_gateway.gw.id
}