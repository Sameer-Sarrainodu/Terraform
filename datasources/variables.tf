variable "aws_reg" {
  default = "us-east-1"

}
variable "aws_ami" {
  default = "ami-09c813fb71547fc4f"

}
variable "type" {
  default = "t2.micro"

}
variable "ec2_tags" {
  default = {
    Name = "my_instance"
  }

}
variable "sg_name" {
  default = "allow-all"

}
variable "sg_descri" {
  default = "this is security group created by sameer"

}
variable "sg_tags" {

  default = {
    Name = "allowed"
  }

}
variable "fromport" {
  default = 0
}
variable "toport" {
  default = 0
}
variable "cidr" {
  default = ["0.0.0.0/0"]

}

variable "ingress_blocks" {
  default = [
    {
      from_port = 22
      to_port   = 22
    },
    {
      from_port = 80
      to_port   = 80
    },
    {
      from_port = 443
      to_port   = 443
    }
  ]

}

