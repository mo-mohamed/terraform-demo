data "aws_route53_zone" "domain"  {
  name = var.domain
}


resource "aws_route53_record" "hostname" {
  zone_id = data.aws_route53_zone.domain.zone_id
  name    = "${var.instance_name}.${data.aws_route53_zone.domain.name}"
  type    = "A"
  ttl     = "300"
  records = [ aws_instance.ec2_instance.public_ip ]
}




