resource "aws_vpc" "idreamvpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "terraform-vpc"
  }
}