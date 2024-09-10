


resource "aws_security_group" "allow_ssh_sg" {
  description = "this will allow port 22"
  name        = "allow_ssh"

  tags = {
    Name = "allow_tls"
  }

    ingress { 
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"] #Allow everyone
    ipv6_cidr_blocks = ["::/0"]
    }

    egress { 
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

}


