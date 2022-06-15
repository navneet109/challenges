resource "aws_vpc" "vpcassessment" {
    cidr_block = var.vpc_cdir_block

    tags = {
        Name = "VPC Assessment"
    }
  
}
output "output_vpc_id" {
  value = aws_vpc.vpcassessment.id
}