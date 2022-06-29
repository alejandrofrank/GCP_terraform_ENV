resource "aws_vpc" "mtc_vpc" {
  cidr_block           = "10.123.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "dev"
  }
}

resource "google_compute_network" "vpc_network" {
  project                 = "${var.my_project_name}"
  name                    = "${var.vpc_network}"
  auto_create_subnetworks = true
  mtu                     = 1460
}