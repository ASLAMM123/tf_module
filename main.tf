# Create a new instance of the latest Ubuntu 20.04 on an 
# t3.micro node with an AWS Tag naming it "Hello World"



data "aws_ami" "am_ec2_cloud" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}



module "my_ec2_instance" {

  source = "github.com/ASLAMM123/tf_module"

  ec2_instance_type   = var.ec2_instance_type
  ec2_instance_name   = var.ec2_instance_type
  number_of_instances = var.number_of_instances
  ec2_ami_id          = data.aws_ami.am_ec2_cloud.id

  output "instance_id" {
    value = module.my_ec2_instance.ec2_instance_id

  }


}



