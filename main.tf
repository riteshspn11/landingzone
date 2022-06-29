/*Resource Block To Deploy VM Instance
resource "google_compute_instance" "myfirstvm-tf" {
  machine_type = var.machine_type
  name = "myfirstvm-tf"
  boot_disk {
      auto_delete = true
      mode = "READ_WRITE"
      initialize_params {
      size = 10
      image = var.image
  }
}
  network_interface {
      network = "default"
      }
}
#Resource Block To Deploy VPC Network
resource "google_compute_network" "vpc_network" {
  name = var.name
  routing_mode = "GLOBAL"
  auto_create_subnetworks = true
  delete_default_routes_on_create = false
}*/
#Resource Block To Deploy Storage Bucket
resource "google_storage_bucket_object" "picture" {
  name   = "butterfly-01"
  source = "/home/riteshkuma/G_Cloud.png"
  bucket = "image-store"
}
