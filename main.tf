module "elk" {
  source              = "JamesWoolfenden/elk/aws"
  version             = "0.2.15"
  ami_name            = var.ami_name
  ingress_cidrs       = ["0.0.0.0/0"]
  ssh_cidrs           = ["0.0.0.0/0"]
  instance_type       = var.instance_type
  private_subnet_tag  = var.private_subnet_tag
  public_subnet_tag   = var.public_subnet_tag
  common_tags         = var.common_tags 
  vpc_cidr            = var.vpc_cidr
}
