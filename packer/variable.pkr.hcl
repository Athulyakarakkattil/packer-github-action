variable "project_name" {
  type        = string
  description = "Name of the project"
  default     = "shopping"
}

variable "project_env" {
  type        = string
  description = "Environment of the project"
  default     = "production"
}

variable "ami_id" {
  type        = string
  description = "ami id if the instance"
  default     = "ami-0a0f1259dd1c90938"
}

locals {
  image-timestamp = "${formatdate("DD-MM-YYYY-hh-mm",timestamp())}"
  image-name = "${var.project_name}-${var.project_env}-${local.image-timestamp}"
}
