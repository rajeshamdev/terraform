
output "ec2_public_ip" {
  value = aws_instance.web_app.public_ip
}

output "webapp_state" {
  value = aws_instance.web_app.instance_state
}

output "ec2_public_ip_sensitive" {
  value     = aws_instance.web_app.public_ip
  sensitive = true
}
