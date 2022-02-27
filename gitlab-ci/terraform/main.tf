resource "yandex_compute_instance" "gitlab" {

  name        = "gitlab"
  hostname    = "gitlab"
  platform_id = "standard-v3"

  labels = {
    tag = "gitlab"
  }

  resources {
    cores         = 2
    core_fraction = 20
    memory        = 6
  }

  scheduling_policy {
    preemptible = true
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu-lts.id
      size     = 50
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }

  metadata = {
    ssh-keys = "ubuntu:${file(var.public_key_path)}"
  }

  provisioner "local-exec" {
    command = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook --timeout 120 -u ubuntu -i '${self.network_interface.0.nat_ip_address},' --private-key ${var.private_key_path} -e 'pub_key=${var.public_key_path}' ../ansible/playbooks/docker_install.yml"
  }

  provisioner "local-exec" {
    command = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook --timeout 120 -u ubuntu -i '${self.network_interface.0.nat_ip_address},' --private-key ${var.private_key_path} -e 'pub_key=${var.public_key_path}' ../ansible/playbooks/gitlab_install.yml"
  }
}

data "yandex_compute_image" "ubuntu-lts" {
  family = "ubuntu-2004-lts"
}

