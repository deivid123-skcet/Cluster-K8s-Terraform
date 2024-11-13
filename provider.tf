terraform {
  required_providers {
    proxmox = {
      source = "bpg/proxmox"
      version = "0.66.3"
    }
  }
}

provider "proxmox" {
  endpoint = "https://192.168.18.46:8006/api2/json"
  username = "root@pam"
  password = "deivid1234"
  insecure = true

}