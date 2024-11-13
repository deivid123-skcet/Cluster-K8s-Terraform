resource "proxmox_virtual_environment_vm" "worker" {
  
  count = var.worker_nr
  name      = format("%s-${count.index + 1}", var.worker_naming)
  node_name = "pve"

  initialization {
    user_account {
      # do not use this in production, configure your own ssh key instead!
      username = "ubuntu"
      password = "1234"
    }
    ip_config {
        ipv4 {
            address = "ip=${cidrhost(var.bridge_cidr_range, var.worker_network_range + count.index)}/24,gw=${cidrhost(var.bridge_cidr_range, 1)}"
        }
    }
  }

  disk {
    datastore_id = "storage-vms"
    file_id      = "local:iso/jammy-server-cloudimg-amd64.img"
    interface    = "virtio0"
    iothread     = true
    discard      = "on"
    size         = 40
  }
  network_device {
    bridge = "vmbr0"
  }

}