resource "aws_route53_record" "www" {
    for_each = toset(var.ec2_tags)
    zone_id= var.zone_id
    name = each.key =="frontend"?var.domain_name:"${each.key}.${var.domain_name}"
    type ="A"
    ttl = 1
    records = [each.key == "frontend"? aws_instance.instances[each.key].public_ip:aws_instance.instances[each.key].private_ip]
    allow_overwrite = true
}