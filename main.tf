module "vpc" {
  source = "./modules/vpc"

  vpc_cidr = var.vpc_cidr
}

module "subnet" {
  source = "./modules/subnet"

  vpc_id            = module.vpc.vpc_id
  subnet_cidr       = var.subnet_cidr
  availability_zone = var.availability_zone
}

module "security_group" {
  source = "./modules/security-group"

  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source = "./modules/ec2"

  ami               = var.ami
  instance_type     = var.instance_type
  subnet_id         = module.subnet.subnet_id
  security_group_id = module.security_group.security_group_id
}

module "s3" {
  source = "./modules/s3"

  bucket_name = var.bucket_name
}