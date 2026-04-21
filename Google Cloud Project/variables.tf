variable "project_id" {
  default = "student-00335"
}

variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-a"
}

variable "vm_names" {
  type    = list(string)
  default = ["web-server-1", "web-server-2"]
}