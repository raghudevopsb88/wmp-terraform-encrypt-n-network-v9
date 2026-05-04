output "subnet_ids" {
  value = [for i,j in aws_subnet.main: j.id]
}

