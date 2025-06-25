variable "project" {
    default="roboshop"
  
}
variable "component"{
    default="catalogue"
}
variable "environment" {
    default = "dev"
  
}
variable "common_tags" {
    default = {
    project="roboshop"
    terraform="true"
    }
  
}
