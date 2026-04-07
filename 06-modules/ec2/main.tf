resource "aws_instance" "instance" {
  ami = "ami-0b4f379183e5706b9"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0d386c7e59b2416fe"]
  tags = {
    Name = var.instance_name
  }
}

variable "instance_name" {}

output "ip_address" {
  value = aws_instance.instance.private_ip
}

#Output in child module wont print on screen
#Output in root module will print on screen as output