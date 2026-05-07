output "subnets_from_subnet_module" {
  value = aws_subnet.main
}

output "route_table_ids_from_subnet_module" {
  value = aws_route_table.main
}

output "igw_subnets" {
  value = [ for i,j in aws_subnet.main: j.id if var.subnets[igw] ]
}

