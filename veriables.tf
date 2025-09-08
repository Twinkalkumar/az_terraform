variable "rg_name" {
  default     = "rg_twinkal"
  description = "test resourcgroup"
  type        = string
}

variable "rg_location" {
  default = "eastus"
  type    = string
}

variable "tags" {
  description = "A map of tags to assign to resources"
  type        = map(string)
  default = {
    Environment = "dev"
    Owner       = "team-dev"
    ManagedBy   = "terraform"
  }
}

variable "Environment" {
  type = map(string)
  default = {
    "subscription_id" = "0aef9e33-85e8-4f22-9173-6ce19a226d16"
    "tenant_id"       = "477b21a6-727e-413f-b5b8-cd0f27c02b6b"
  }
}

#variable "client_id" {
#  default = "242c76da-6bd5-459d-8a80-5ecca5a5b027"
#  type    = string
#}

#variable "client_secret" {
#  default   = var.client_secret
#  type      = string
#  sensitive = true
#}

variable "vnet_name" {
  default = "vnet_twinkal"
  type    = string
}

variable "vnet_ipaddress" {
  default = ["192.168.0.0/24"]
  type    = list(string)
}

variable "subnet_name" {
  default = "subnet1"
}

variable "address_prefix" {
  default = ["192.168.0.64/26"]
}

variable "vm_name" {
  default = "test-twinkal-vm"
}