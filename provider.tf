terraform {
  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "3.0.1-rc4"
    }
  }
}

provider "proxmox" {
  pm_api_url = "https://192.168.18.46:8006/api2/json"
  pm_tls_insecure = true
  pm_timeout = 6000000000
}