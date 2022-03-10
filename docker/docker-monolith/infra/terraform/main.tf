module "docker" {
  service_account_key_file = var.service_account_key_file
  source                   = "./modules/docker"
  public_key_path          = var.public_key_path
  private_key_path         = var.private_key_path
  image_id                 = var.docker_disk_image
  subnet_id                = var.subnet_id
  platform_id              = var.platform_id
  preemptible              = var.preemptible
  environment              = var.environment
  inventory_tag            = var.inventory_tag
  instance_count           = var.instance_count
}
