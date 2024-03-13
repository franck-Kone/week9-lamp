resource "aws_route53_record" "rc1" {
    zone_id = "Z03905943LA5OTI883P6F"
    type = "A"
    ttl = 300
    name = "resume.devops-pro.xyz"
    records = [ aws_lightsail_instance.lightsail_instance.public_ip_address ]
  
}