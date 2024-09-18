resource "aws_instance" "expense" {
  for_each               = var.instance_names
  ami                    = "ami-09c813fb71547fc4f"
  instance_type          = each.value
  vpc_security_group_ids = ["sg-0ce851e2131cc0a28"]
  tags = merge(
    var.common_tags,
    var.tags,{
    Name = each.key
    }
  )
}

