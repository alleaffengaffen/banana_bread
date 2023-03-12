module "cluster" {
  source = "git::https://github.com/poseidon/typhoon//aws/flatcar-linux/kubernetes?ref=v1.26.2"

  # AWS
  cluster_name = "banana-bread"
  dns_zone     = "bread.alleaffengaffen.ch"
  dns_zone_id  = "Z02230132GI5KJITIME9G"

  # configuration
  ssh_authorized_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJov21J2pGxwKIhTNPHjEkDy90U8VJBMiAodc2svmnFC cardno:18 187 880"
  networking         = "cilium"
  host_cidr          = "10.123.0.0/16"
  pod_cidr           = "10.111.0.0/16"
  service_cidr       = "10.222.0.0/16"

  # control-plane
  worker_count = 2
  worker_type  = "t3a.small"
  worker_price = "0.10"

  # data-plane
  controller_type  = "t3a.small"
  controller_count = 1

}
