resource "aws_security_group" "allow-all" {
  name        = var.sg_name
  description = var.sg_descri
  tags        = var.sg_tags
  lifecycle {
    create_before_destroy = true
  }


  dynamic "ingress" {
    for_each = var.ingress_blocks
    content {
      from_port        = ingress.value["from_port"]
      to_port          = ingress.value["to_port"]
      protocol         = "tcp"
      cidr_blocks      = var.cidr
      ipv6_cidr_blocks = ["::/0"]
    }

  }
  egress {
    from_port        = var.fromport
    to_port          = var.toport
    protocol         = "-1"
    cidr_blocks      = var.cidr
    ipv6_cidr_blocks = ["::/0"]
  }

}

resource "aws_instance" "instance" {
  ami                    = var.aws_ami
  instance_type          = var.type
  vpc_security_group_ids = [aws_security_group.allow-all.id]
  tags                   = var.ec2_tags
}