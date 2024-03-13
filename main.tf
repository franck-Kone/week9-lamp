
#creating the lightsail instance
resource "aws_lightsail_instance" "lightsail_instance" {
  name              = "lamp-server"
  availability_zone = "us-east-1a"
  blueprint_id      = "centos_7_2009_01"
  bundle_id         = "medium_1_0"
  key_pair_name     = aws_lightsail_key_pair.ec2_key.name
  tags = {
    name = "utrains devops"
    env  = "dev"
  }
  user_data = file("resume.sh")
}