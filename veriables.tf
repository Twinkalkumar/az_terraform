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
  }
}

variable "subscription_id" {
  default = "4f0dddbf-b2ef-4bd5-9204-6fe8b3aa84a4"
  type    = string
}


variable "tenant_id" {
  default = "00d1f4ed-8d43-49b4-8040-b8d4ac96f1ec"
  type    = string
}

variable "client_id" {
  default = "242c76da-6bd5-459d-8a80-5ecca5a5b027"
  type    = string
}

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