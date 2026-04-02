resource "aws_instance" "frontend" {
  ami = "ami-0b4f379183e5706b9"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0d386c7e59b2416fe"]
  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z08535891FNQ7VOKD83G7"
  name    = "frontend-dev.sairamdevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongodb" {
  ami = "ami-0b4f379183e5706b9"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0d386c7e59b2416fe"]
  tags = {
    Name = "mongodb"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z08535891FNQ7VOKD83G7"
  name    = "mongodb-dev.sairamdevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.mongodb.private_ip]
}

resource "aws_instance" "catalogue" {
  ami = "ami-0b4f379183e5706b9"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0d386c7e59b2416fe"]
  tags = {
    Name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z08535891FNQ7VOKD83G7"
  name    = "catalogue-dev.sairamdevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.catalogue.private_ip]
}

resource "aws_instance" "redis" {
  ami = "ami-0b4f379183e5706b9"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0d386c7e59b2416fe"]
  tags = {
    Name = "redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z08535891FNQ7VOKD83G7"
  name    = "redis-dev.sairamdevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.redis.private_ip]
}


resource "aws_instance" "user" {
  ami = "ami-0b4f379183e5706b9"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0d386c7e59b2416fe"]
  tags = {
    Name = "user"
  }
}

resource "aws_route53_record" "user" {
  zone_id = "Z08535891FNQ7VOKD83G7"
  name    = "user-dev.sairamdevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.user.private_ip]
}

resource "aws_instance" "cart" {
  ami = "ami-0b4f379183e5706b9"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0d386c7e59b2416fe"]
  tags = {
    Name = "cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = "Z08535891FNQ7VOKD83G7"
  name    = "cart-dev.sairamdevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.cart.private_ip]
}

resource "aws_instance" "mysql" {
  ami = "ami-0b4f379183e5706b9"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0d386c7e59b2416fe"]
  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z08535891FNQ7VOKD83G7"
  name    = "mysql-dev.sairamdevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "shipping" {
  ami = "ami-0b4f379183e5706b9"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0d386c7e59b2416fe"]
  tags = {
    Name = "shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z08535891FNQ7VOKD83G7"
  name    = "shipping-dev.sairamdevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "rabbitmq" {
  ami = "ami-0b4f379183e5706b9"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0d386c7e59b2416fe"]
  tags = {
    Name = "rabbitmq"
  }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z08535891FNQ7VOKD83G7"
  name    = "rabbitmq-dev.sairamdevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.rabbitmq.private_ip]
}

resource "aws_instance" "payment" {
  ami = "ami-0b4f379183e5706b9"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0d386c7e59b2416fe"]
  tags = {
    Name = "payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z08535891FNQ7VOKD83G7"
  name    = "payment-dev.sairamdevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.payment.private_ip]
}

resource "aws_instance" "dispatch" {
  ami = "ami-0b4f379183e5706b9"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0d386c7e59b2416fe"]
  tags = {
    Name = "dispatch"
  }
}

resource "aws_route53_record" "dispatch" {
  zone_id = "Z08535891FNQ7VOKD83G7"
  name    = "dispatch-dev.sairamdevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.dispatch.private_ip]
}
