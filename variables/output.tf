output "running_instance_count" {
  value       = length(data.aws_instances.running.ids)
  description = "Number of running EC2 instances"
}

output "running_instance_ids" {
  value       = data.aws_instances.running.ids
  description = "List of running EC2 instance IDs"
}

