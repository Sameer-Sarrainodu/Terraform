resource "aws_security_group" "allow-all" {
    name = var.sg_name
    description = var.sg_descri 
    tags = {
        Name="allowed"
    }

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
}

resource "aws_instance" "instances" {
    for_each = toset(var.ec2_tags)
    ami = var.aws_ami
    instance_type = var.instance_type[each.key] 
    vpc_security_group_ids =[aws_security_group.allow-all.id]
    tags ={
        Name=each.key
    }
}