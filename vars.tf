#This file is the definition of the variables
#An empty varibale by the name name
variable "name" {}
variable "password" {}
#Array of strings
variable "emergency_admins" {
  type        = list(string)
  description = "Defines the colleagues who are added to each subaccount as emergency administrators."
  default = ["matan.elitzur@sap.com", "oren.frishberg.barak@sap.com"]
}

variable "project_tags" {
  type = map(string)
  default = {
    name = "matan"
    family= "Elitzur"
  }
}

variable "ports" {
  type = map(list(string))
  default = {
    "22" = ["127.0.0.1/32", "192.168.0.0/24"]
    "443" = ["0.0.0.0/0"]
  }
}