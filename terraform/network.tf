resource "yandex_vpc_network" "network" {
  name = "web-network"
}

resource "yandex_vpc_subnet" "subnet" {
  name           = "web-subnet"
  zone           = var.yc_zone
  network_id     = yandex_vpc_network.network.id
  v4_cidr_blocks = ["10.10.0.0/24"]
}
