variable "instance_type" {
   type = string
}

variable "private_subnet_tag" {
   type = string
   default = "public_subnet"
}

variable "ami_name" {
   type = string
}

variable "instance_type" {
   type = string
}

variable "subnet_public" {
   type = string
}

variable "vpc_cidr" {
   type = list(string)
}
