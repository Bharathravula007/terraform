
output "public_ip" {
  value = aws_instance.myec2.id
}