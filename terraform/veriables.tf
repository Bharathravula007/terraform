variable "env_prefix" {
  type = string
  description = "tags"
  default = "dev"
  
}

variable "ami" {
  type = string
  description = "ami id"
  default = "ami-053b0d53c279acc90"
  
}
/*
variable "instance_type" {
  type = string
  description = "t2.micro"
}
 */ 

variable "key_name" {
    type = string
    default = "k8s"
    description = "key name"
  
}