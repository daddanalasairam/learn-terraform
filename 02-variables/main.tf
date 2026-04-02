variable "URL" {
  default = "example.com"
}

# Access Variable
output "URL" {
  value = var.URL
}

# Variable is a combination of some other string. Then we have to use ${}
output "URL1" {
  value = "URL - ${var.URL}"
}

# Data types
variable "num1" {
  default = 10
}

variable "bool1" {
  default = true
}

variable "str1" {
  default = "Hello"
}

# Numbers, Booleans & Strings

#Variable types
variable "sr2" {
  default = "World"
}

variable "list" {
  default = [
    10,
    20,
    "xyz",
    false
  ]
}

