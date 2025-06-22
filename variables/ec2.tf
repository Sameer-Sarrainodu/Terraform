resource "aws_security_group" "allow-all" {
    name = var.sg_name
    description = var.sg_descri 
    tags = var.sg_tags

    ingress{
        from_port = var.fromport
        to_port = var.toport
        protocol = "-1"
        cidr_blocks = var.cidr 
        ipv6_cidr_blocks = ["::/0"]
    } 
    
    egress{
        from_port = var.fromport
        to_port = var.toport 
        protocol = "-1"
        cidr_blocks = var.cidr 
        ipv6_cidr_blocks = ["::/0"]
    } 
    lifecycle {
    create_before_destroy = true
  }

}

resource "aws_instance" "instance" {
    ami = var.aws_ami
    instance_type = var.type 
    vpc_security_group_ids =[aws_security_group.allow-all.id]
    tags =var.ec2_tags
 
    


  
}