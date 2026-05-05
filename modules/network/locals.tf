locals {
  subnets_merged = merge(aws_subnet.main, var.subnets)
}