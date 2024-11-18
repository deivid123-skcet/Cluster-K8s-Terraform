locals {
    agent = 1
    cidr = "192.168.68.0/24"
    onboot = true
    proxmox_node = "pve"
    scsihw = "virtio-scsi-pci"
    template = "jenkins"

    bridge = {
        interface = "vmbr0"
        model = "virtio"
    }
    disks = {
      main = {
        backup = true
        format = "raw"
        type = "disk"
        storage = "storage-vms"
        slot = "scsi0"
      }
      cloudinit = {
        backup = false
        format = "raw"
        type = "cloudinit"
        storage = "storage-vms"
        slot = "ide2"
    }
  }
  serial = {
    id = 0
    type = "socket"
  }
  cloud_init = {
    user = "ubuntu"
    password = "12345"
  }


  masters = {
    count = 3
    name_prefix = "k8-master-producao"
    vmid_prefix = 800

    cores = 2
    disk_size = "40G"
    memory = 2048
    sockets = 1

    network_last_octet = 70
    tags = "masters"
  }

  workers = {
    count = 2

    name_prefix = "k8s-worker-producao"
    vmid_prefix = 600

    cores = 1
    disk_size = "50G"
    memory = 2048
    sockets = 1

    network_last_octet  = 80
    tags = "workers"
  }
}

