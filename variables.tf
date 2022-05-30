variable "services" {
  description = "Consul services monitored by Consul NIA"
  type = map(
    object({
      id        = string
      name      = string
      address   = string
      port      = number
      status    = string
      meta      = map(string)
      tags      = list(string)
      namespace = string

      node                  = string
      node_id               = string
      node_address          = string
      node_datacenter       = string
      node_tagged_addresses = map(string)
      node_meta             = map(string)
    })
  )
}

variable "vsys_name" {
  # https://docs.paloaltonetworks.com/pan-os/9-0/pan-os-web-interface-help/device/device-virtual-systems.html
  description = "The name of the virtual system"
  type        = string
  default     = "vsys1"
}

variable "dag_prefix" {
  type        = string
  description = "(Optional) Prefix added to the dynamic address group created by Consul"
  default     = ""
}

variable "dag_suffix" {
  type        = string
  description = "(Optional) Suffix added to the dynamic address group created by Consul"
  default     = ""
}

variable "panos.addres" {
  type        = string
  default     = "192.168.86.68"
}


variable "panos.api_key" {
  type        = string
  default     = "LUFRPT1kdSt6TFY2aG8yRDl2eFhweW1jSG0zVS9IZ1E9cVZrOFVpbDRueTROYkZxSVd3STFtYTNvMkd3VGg0Zi8ybHFVWGlMRG9od1VvamlXU1FwV21RWU03SndvQTQxbw"
}


variable "panos.username" {
  type        = string
  default     = "admin"
}
