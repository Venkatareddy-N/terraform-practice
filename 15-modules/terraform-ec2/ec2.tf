resource "aws_instance" "terraform_server" {
  ami                    = var.ami_id
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-0ce851e2131cc0a28"]
  tags                   = var.tags

}


