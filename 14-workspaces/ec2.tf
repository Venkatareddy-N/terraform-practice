resource "aws_instance" "terraform" {

  ami                    = "ami-09c813fb71547fc4f"
  instance_type          = lookup(var.instance_names, terraform.workspace)
  vpc_security_group_ids = ["sg-0ce851e2131cc0a28"]
  tags = {
    Name = "terraform-${terraform.workspace}"
  }
}
