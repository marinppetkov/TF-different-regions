terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.30.0"
    }
  }
}

provider "aws" {
  alias = "us-east"
  region = "us-east-1"
}

provider "aws" {
  alias  = "us-west"
  region = "us-west-2"
}

module "server-us-east" {
  source = "./modules/server-deploy"
  for_each = var.server-east
  instance_tag = each.value["instance_tag"]
  instance_type = each.value["instance_type"]
  providers = {
    aws.zone = aws.us-east
  }
}

module "server-us-west" {
  source = "./modules/server-deploy"
  for_each = var.server-west
  instance_tag = each.value["instance_tag"]
  instance_type = each.value["instance_type"]
  providers = {
    aws.zone = aws.us-west
  }
}