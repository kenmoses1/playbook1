variable "machine_type" {
  type = string
  description = "my nodes in SFC"
  default = "g1-small"
}

variable "boot_image" {
    type = string
    default = "debian-cloud/debian-11"

}

variable "compute_instance_names" {
    type = list(string)
    default = [ "ansible-server",
                "ansible-clent-one" ]
}

variable "token" {
  type = string
  default = "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"
}