variable "host" {
  type        = string
  default     = ""
  sensitive   = false
  description = "Kubernetes Cluster Host"
}

variable "ca_crt" {
  type        = string
  default     = ""
  sensitive   = true
  description = "Kubernetes Cluster CA Certificate"
}

variable "username" {
  type        = string
  default     = ""
  sensitive   = false
  description = "Kubernetes X.509 Username"
}

variable "timeout" {
  type        = string
  default     = ""
  sensitive   = false
  description = "Kubernetes X.509 Timeout"
}

variable "roles" {
  type        = map(string)
  default     = {}
  sensitive   = false
  description = "Kubernetes X.509 Roles"
}
