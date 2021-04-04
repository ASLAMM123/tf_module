# My First Terraform module in GitHub

This gives a rootmap to your infrastructure needs


##Use it

~~~
module "my_ec2_instance" {

  source = "github.com/ASLAMM123/tf_module"

  ec2_instance_type   = "t3.micro"
  ec2_instance_name   = "My instance"
  number_of_instances = 1
  ec2_ami_id          = < your AMI ID to use to launch the instance>


}

~~~
