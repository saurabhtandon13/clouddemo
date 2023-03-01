# Defining the Input Variables

variable "ec2region" {
  description = "Region to which the EC2 instance will be deployed"
  type        = string
}

variable "instance_type" {
  description = "This gives the number of the ec2 instance to be created"
  type        = string
}
