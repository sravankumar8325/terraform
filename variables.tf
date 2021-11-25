variable "vpc_id" {
   type = string
}

variable "private_subnet_tag" {
   type = string
   default = "private"
}

variable "public_subnet_tag" {
   type = string
   default = "public"
}

variable "common_tags" {
   type = map(any)
   default = {
        name = "elk_stack"
   }
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
   type = string
}
