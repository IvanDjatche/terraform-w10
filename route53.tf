## This piece of code allow you to create a hosted_zone and create record

## first you create hosted_zone, with domain that you are already buy 
resource "aws_route53_zone" "main" {
  name = "ivandev.com"
}

## create your record 
resource "aws_route53_record" "lb_record" {
  zone_id = aws_route53_zone.main.zone_id
  name    = "week10.ivandev.com"  # Replace "your_desired_subdomain" with your desired subdomain
  type    = "CNAME"
  ttl     = 300
  records = [aws_lb.application-lb.dns_name]
}