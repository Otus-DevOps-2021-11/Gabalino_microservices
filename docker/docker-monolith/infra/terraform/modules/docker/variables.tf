variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable private_key_path {
  description = "Path to the private key used for ssh access"
}

variable image_id {
  description = "Disk image"
}

variable subnet_id {
  description = "Subnet"
}

variable service_account_key_file {
  description = "path to key.json"
}

variable platform_id {
  default = "standard-v1"
}

variable preemptible {
  default = false
}

variable instance_count {
  description = "VM count"
  default     = 1
}

variable docker_disk_image {
  description = "Disk image for docker app"
  default     = "docker id"
}

variable environment {
  description = "Env type"
}

variable "inventory_tag" {
  description = "VM tag for ansible inventory"
}
