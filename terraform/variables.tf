variable "subscription_id" {
  type        = string
  description = "The subscription ID to be scanned"
  default     = null
}

variable "location" {
  type    = string
  default = "southeastasia"
}

variable "environment" {
  default     = "demo"
  description = "Must be all lowercase letters or numbers"
}