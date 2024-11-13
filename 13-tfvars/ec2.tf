resource "aws_instance" "expense" {
  for_each               = var.instance_names
  ami                    = "ami-09c813fb71547fc4f"
  instance_type          = each.value
  vpc_security_group_ids = ["sg-0ce851e2131cc0a28"]
  tags = merge(
    var.common_tags,
    var.tags, {
      Name = each.key
    }
  )
}

resource "aws_security_group" "allow-ssh" {
  name = "allow-ssh_${var.environment}"

  ingress {
    from_port        = 22
    to_port          = 22
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

  tags = merge(
    var.common_tags,
    var.tags,
    {
      Name = "allow-ssh_${var.environment}"
    }
  )

}
