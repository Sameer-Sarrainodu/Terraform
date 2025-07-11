data "aws_ami" "myami" {
    owners = ["973714476881"]
    
    most_recent = true
    filter{
        name="name"
        values=["RHEL-9-DevOps-Practice"]
    }
  
}
output "ami" {
    value = data.aws_ami.myami.id
  
}