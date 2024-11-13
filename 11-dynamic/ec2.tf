resource "aws_instance" "terraform_server" {
  ami                    = "ami-09c813fb71547fc4f"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_ports.id]
  tags = {
    Name = "DevOps-Master"
  }
}

resource "aws_security_group" "allow_ports" {
  name = "allow-ports"

  dynamic "ingress" {
    for_each = var.ingress_ports
    content {
      from_port   = ingress.value["from_port"] # you can use this war or below way also to get valuse
      to_port     = ingress.value.to_port      # 2nd way to get value
      protocol    = ingress.value["protocol"]
      cidr_blocks = ingress.value["cidr_blocks"]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Allow-Ports"
  }

}
