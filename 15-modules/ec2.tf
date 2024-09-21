resource "aws_instance" "terraform_server" {
  ami                    = "ami-09c813fb71547fc4f"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-0ce851e2131cc0a28"]
  tags = {
    Name = "DevOps-Master"
  }
}