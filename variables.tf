variable "username" {
  type        = string
  default     = ""
  sensitive   = false
  description = "Kubernetes X.509 Username"
}

variable "role" {
  type        = string
  default     = ""
  sensitive   = false
  description = "Kubernetes X.509 Role"
}
