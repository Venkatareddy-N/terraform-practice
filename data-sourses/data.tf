
# devops practice RHEL AMI Owner account ID : 973714476881

data "aws_ami" "vs-devops" {
  most_recent = true
  owners      = ["973714476881"]

  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }

}