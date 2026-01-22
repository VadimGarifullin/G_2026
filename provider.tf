terraform {
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "2.1" 
    }
  }
}
 
provider "openstack" {
    user_name   = var.username
    password   = var.password
    tenant_id = var.project_id
    region     = "RegionOne"
    auth_url   = "https://infra.mail.ru:35357/v3/" 
    endpoint_overrides = {
      compute = "https://infra.mail.ru:8774/v2.1"
    }
}
