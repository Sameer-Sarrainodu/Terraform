locals {
  sgs_name=[aws_security_group.allow-all.id]

}
locals {
  structure="${var.project}-${var.environment}-${var.component}"
}

locals {
  ec2_tagings=merge(
    var.common_tags,
    {
        environment="dev"
        version="1.1"
        
    }
  )
}