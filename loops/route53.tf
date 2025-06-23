resource "aws_route53_record" "www" {
    count = length(aws_instance.instances)
    zone_id= var.zone_id
    name = var.ec2_tags[count.index] =="frontend"?var.domain_name:"${var.ec2_tags[count.index]}.${var.domain_name}"
    type ="A"
    ttl = 1
    records = [aws_instance.instances[count.index].tags["Name"] == "frontend"? aws_instance.instances[count.index].public_ip:aws_instance.instances[count.index].private_ip]
    allow_overwrite = true
}