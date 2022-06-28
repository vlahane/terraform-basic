variable "rg_create" {
  type    = bool
  default = false
}

variable "rg_name" {
  type    = string
  default = "Default-RG-Name"
}

variable "location" {
  type    = string
  default = "eastus"
}

variable "address_prefixes" {
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
  type        = list(any)
  description = "subnet address_prefixes"
}

variable "tags" {
  type = map(any)
  default = {
    year : "2022"
  }
}
