resource "aws_instance" "terraform_server" {
  ami                    = "ami-09c813fb71547fc4f"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  tags = {
    Name = "DevOps-Master"
  }

  #provisioners will work at the time of exuction (at the time of creation)
  provisioner "local-exec" {
    command = "echo  ${self.public_ip} > public_ip.out"
  }

   provisioner "local-exec" {
    command = "echo  ${self.private_ip} > private_ip.out"
  }

  # connection {
  #   type     = "ssh"
  #   user     = "ec2-user"
  #   password = "DevOps321"
  #   host     = self.public_ip
  # }

  # provisioner "remote-exec" {
  #   inline = [
  #     "sudo dnf install nginx -y",
  #     "sudo systemctl start nginx"
  #   ]
  # }

  # provisioner "remote-exec" {
  #   when = destroy
  #   inline = [
  #     "sudo systemctl stop nginx"
  #   ]
  # }
}

resource "aws_security_group" "allow_ssh" {
  name = "allow-ssh"

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "Allow-SSH"
  }

}
