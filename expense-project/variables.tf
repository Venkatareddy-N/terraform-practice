variable "instance_names" {
  type        = list(string)
  default     = ["mysql", "backend", "frontend"]
  description = "these are variables for instances"
}