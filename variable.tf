variable "ec2_instance_type" {
  type        = string
  default     = "t3.micro"
  description = "This is the AWS EC2 instance type / size to use"
}


variable "ec2_instance_name" {
  type         = string
  descritption = "The name to give the instance"
}


variable "number_of_instances" {
  type       = number
  descrption = "number of instances"
}


variable "ec2_ami_id" {
  type        = string
  description = "The AMI ID to use to launch the instance.  NB: These differ between regions"
}


