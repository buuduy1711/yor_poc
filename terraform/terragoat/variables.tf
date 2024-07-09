variable "subscription_id" {
  type        = string
  description = "The subscription ID to be scanned"
  default     = "82d5284c-0953-4ad9-87b6-31fd143a33e9"
}

variable "location" {
  type    = string
  default = "southeastasia"
}

variable "environment" {
  default     = "demo"
  description = "Must be all lowercase letters or numbers"
}