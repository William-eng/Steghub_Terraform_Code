
variable "region" {
  type    = string
  default = "us-east-1"
}

packer {
  required_plugins {
    amazon = {
      source  = "github.com/hashicorp/amazon"
      version = "~> 1"
    }
  }
}

locals {
  timestamp = regex_replace(timestamp(), "[- TZ:]", "")
}

source "amazon-ebs" "terraform-bastion-prj-19" {

  ami_name      = "terraform-bastion-prj-19-${local.timestamp}"
  instance_type = "t2.small"
  region        = var.region

  # Specify the subnet_id here
  subnet_id = "subnet-043a399d5bfcff012" 

  source_ami_filter {
    filters = {
      name                = "RHEL-9.4.0_HVM-20240605-x86_64-82-Hourly2-GP3"
      root-device-type    = "ebs"
      virtualization-type = "hvm"
    }
    most_recent = true
    owners      = ["309956199498"]
  }
  ssh_username = "ec2-user"
  tag {
    key   = "Name"
    value = "terraform-bastion-prj-19"
  }
}

build {
  sources = ["source.amazon-ebs.terraform-bastion-prj-19"]

  provisioner "shell" {
    script = "bastion.sh"
  }
}




