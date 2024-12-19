resource "yandex_compute_instance" "bastion" {
  name     = "bastion"
  hostname = "bastion"
  zone     = "ru-central1-d"
  platform_id = "standard-v2"
  resources {
    cores  = 2
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = "fd8ee3up0b7d31hq8t7d"
      type     = "network-ssd"
      size     = "30"
    }
  }

  network_interface {
    subnet_id          = yandex_vpc_subnet.public-subnet.id
    security_group_ids = [yandex_vpc_security_group.bastion-sg.id]
    ip_address         = "10.4.0.10"
    nat                = true
  }

  metadata = {
    user-data = "${file("./meta.txt")}"
  }


}
