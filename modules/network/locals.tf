locals {
  subnets_merged = { for i,j in var.subnets: i => merge(var.subnets[i], aws_subnet.main[i])}
  subnets_with_igw = [ for i,j in local.subnets_merged: j.id if j.igw ]
}

