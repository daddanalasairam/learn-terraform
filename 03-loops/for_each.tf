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

resource "aws_instance" "servers" {
  count         = length(var.server_names)
  ami           = "ami-12345678"
  instance_type = "t2.micro"
  tags = {
    Name = var.server_names[count.index]
  }
}