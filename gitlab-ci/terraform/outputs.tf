output "external_ip_address_gitlab" {
  value = yandex_compute_instance.gitlab.network_interface[0].nat_ip_address
}

output "gitlab_url" {
  value = "http://${yandex_compute_instance.gitlab.network_interface[0].nat_ip_address}"
}
