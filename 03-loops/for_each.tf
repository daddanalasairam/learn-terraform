variable "fruits" {
  default = {
    apple = {}
    banana = {}
    orange = {}
  }
}

resource "null_resource" "fruits" {
  for_each = var.fruits
}

variable "server_names" {
  default = ["app1", "app2", "app3"]
}

