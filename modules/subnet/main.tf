resource "aws_subnet" "idreamsubnet" {
  vpc_id            = var.vpc_id
  cidr_block        = var.subnet_cidr
  availability_zone = var.availability_zone

  tags = {
    Name = "terraform-subnet"
  }
}