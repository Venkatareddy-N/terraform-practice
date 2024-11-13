variable "instance_names" {
  type = map(any)
  default = {
    mysql    = "t3.micro"
    frontend = "t2.micro"
    backend  = "t2.micro"
  }
}

variable "zone_id" {
  default = "Z04310266RYXPYRYCYZF"
}

variable "domain_name" {
  default = "venkatswan.online"
}
