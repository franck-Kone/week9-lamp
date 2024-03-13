output "public_ip" {
  value = aws_lightsail_instance.lightsail_instance.public_ip_address

}
output "username" {
  value = aws_lightsail_instance.lightsail_instance.username

}
output "ssh" {
  value = "ssh -i ${local_file.ssh_key.filename} ${aws_lightsail_instance.lightsail_instance.username}@${aws_lightsail_instance.lightsail_instance.public_ip_address}"

}

output "dns-name" {
  value = aws_route53_record.rc1.name
  
}