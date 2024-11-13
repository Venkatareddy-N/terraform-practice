module "ec2" {
  source = "../terraform-ec2"
  ami_id = var.my_ami_id
}


