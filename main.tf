module "databases" {
  for_each = var.databases
  source   = "./modules/rds"

  env        = var.env
  subnet_ids = var.subnets
  kms_key_id = var.kms_key_id

  allocated_storage = each.value["allocated_storage"]
}


module "eks" {
  source = "./modules/eks"

  env        = var.env
  subnets    = var.subnets
  kms_key_id = var.kms_key_id

}



