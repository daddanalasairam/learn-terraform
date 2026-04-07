resource "aws_route53_record" "record" {
  zone_id = "Z08535891FNQ7VOKD83G7"
  name    = "${var.instance_name}-dev.sairamdevops.online"
  type    = "A"
  ttl     = "30"
  records = [var.ip_address]
}

variable "instance_name" {}
variable "ip_address" {}