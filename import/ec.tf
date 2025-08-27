resource "aws_instance" "roboshop" {

    ami= "ami-09c813fb71547fc4f"
    instance_type= "t2.micro"
    vpc_security_group_ids= ["sg-0e431449e6b8a4604"]
    tags={
        Name = "linux-change"
    }

  
}