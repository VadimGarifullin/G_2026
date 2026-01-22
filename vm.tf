resource "openstack_networking_floatingip_v2" "fip_1" {
  pool = "ext-net"
}

resource "openstack_compute_instance_v2" "haproxy_01" {
  name               = "haproxy_01"
  availability_zone  = "GZ1"
  flavor_name        = "STD2-1-1"
  key_pair           = "ansible-KZjbkAjo"
  security_groups    = ["default"]
  block_device {
    source_type      = "image"
    uuid             = "60502e29-e0c8-4c75-afc8-e0b78856626e"
    destination_type = "volume"
    volume_size      = 30
    volume_type      = "ceph-hdd"
    delete_on_termination = true
  } 
  network {
    name = "Cloud-Network"
  }
}
 
resource "openstack_compute_floatingip_associate_v2" "fip_1" {
  floating_ip = "${openstack_networking_floatingip_v2.fip_1.address}"
  instance_id = "${openstack_compute_instance_v2.haproxy_01.id}"
}

resource "openstack_compute_instance_v2" "game_01" {
  name               = "game_01"
  availability_zone  = "GZ1"
  flavor_name        = "STD2-1-1"
  key_pair           = "ansible-KZjbkAjo"
  security_groups    = ["default"]
  block_device {
    source_type      = "image"
    uuid             = "60502e29-e0c8-4c75-afc8-e0b78856626e"
    destination_type = "volume"
    volume_size      = 30
    volume_type      = "ceph-hdd"
    delete_on_termination = true
  } 
  network {
    name = "Cloud-Network"
  }
}

resource "openstack_compute_instance_v2" "game_02" {
  name               = "game_02"
  availability_zone  = "GZ1"
  flavor_name        = "STD2-1-1"
  key_pair           = "ansible-KZjbkAjo"
  security_groups    = ["default"]
  block_device {
    source_type      = "image"
    uuid             = "60502e29-e0c8-4c75-afc8-e0b78856626e"
    destination_type = "volume"
    volume_size      = 30
    volume_type      = "ceph-hdd"
    delete_on_termination = true
  } 
  network {
    name = "Cloud-Network"
  }
}

resource "openstack_compute_instance_v2" "game_03" {
  name               = "game_02"
  availability_zone  = "GZ1"
  flavor_name        = "STD2-1-1"
  key_pair           = "ansible-KZjbkAjo"
  security_groups    = ["default"]
  block_device {
    source_type      = "image"
    uuid             = "60502e29-e0c8-4c75-afc8-e0b78856626e"
    destination_type = "volume"
    volume_size      = 30
    volume_type      = "ceph-hdd"
    delete_on_termination = true
  } 
  network {
    name = "Cloud-Network"
  }
}