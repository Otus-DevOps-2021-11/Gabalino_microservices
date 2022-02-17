output "external_ip_address_monolith" {
  value = module.docker.external_ip_address_docker
}

#output "monoloth_url" {
#  value = [
#    "http://${external_ip_address_docker}:9292"
#  ]
#}
