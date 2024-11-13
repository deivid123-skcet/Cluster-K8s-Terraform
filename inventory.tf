resource "local_file" "ansible_inventory" {
  content = templatefile("inventory.tmpl",
    {
      master = [
        for i in range(var.master_nr) : {
          ip_address = cidrhost(var.bridge_cidr_range, var.master_network_range + i)
        }
      ]
      
      worker = [
        for i in range(var.worker_nr) : {
          ip_address = cidrhost(var.bridge_cidr_range, var.worker_network_range + i)
        }
      ]
    }
  )
  filename = "inventory.ini"
  file_permission = "0600"
}
