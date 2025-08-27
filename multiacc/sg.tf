resource "aws_security_group" "allow-all-dev" {
    name = "allow-all-dev"
    description = "just allow all security group"
    tags = {
      Name = "allow_all"
    }
    ingress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    } 
    
    egress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    } 
    provider = aws.dev
}

resource "aws_security_group" "allow-all-prod" {
    name = "allow-all-prod"
    description = "just allow all security group"
    tags = {
      Name = "allow_all"
    }
    ingress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    } 
    
    egress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    } 
    provider = aws.prod
}
