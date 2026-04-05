resource "aws_instance" "instance" {
  ami = "ami-0b4f379183e5706b9"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0d386c7e59b2416fe"]
  tags = {
    Name = var.component_name
  }
}

resource "aws_route53_record" "record" {
  zone_id = "Z08535891FNQ7VOKD83G7"
  name    = "${var.component_name}-dev.sairamdevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.instance.private_ip]
}

variable "component_name" {}