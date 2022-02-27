variable cloud_id {
  description = "Cloud"
}

variable folder_id {
  description = "Folder"
}

variable region_id {
  description = "Region"
  default     = "ru-central1"
}

variable zone {
  description = "Zone"
  default     = "ru-central1-a"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable private_key_path {
  description = "Path to the private key used for ssh access"
}

variable subnet_id {
  description = "Subnet"
}

variable service_account_key_file {
  description = "path to key.json"
}

variable instance_count {
  description = "VM count"
  default     = 1
}

variable "platform_id" {
  default = "standard-v1"
}

variable "preemptible" {
  default = false
}

variable "docker_disk_image" {
  description = "Disk image for docker"
  default     = "docker"
}

variable "inventory_tag" {
  description = "VM tag for ansible inventory"
}