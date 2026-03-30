output "load_balancer_ip" {
  value = one([
    for l in yandex_lb_network_load_balancer.lb.listener :
    one([
      for a in l.external_address_spec :
      a.address
    ])
  ])
}

output "web_ips" {
  value = [
    for i in yandex_compute_instance.web :
    i.network_interface[0].nat_ip_address
  ]
}