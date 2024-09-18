variable "instance_names" {
  type = map
}

variable "zone_id" {
  default = "Z04310266RYXPYRYCYZF"
}

variable "domain_name" {
  default = "venkatswan.online"
}


variable "common_tags" {
  default = {
    Project = "expense"
    Terraform = "True"

  }
}

variable "tags" {
  type = map
  
}