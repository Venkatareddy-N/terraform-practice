variable "ami_id" {
  type = string
  #default = "ami-09c813fb71547fc4f"
}

variable "tags" {
  type = map(any)
  default = {
    Name      = "15-Modules"
    Terraform = "True"

  }
}