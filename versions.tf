terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.47"
    }
    # kubernetes = {
    #   source  = "hashicorp/kubernetes"
    #   version = ">= 2.10"
    # }
    # kubectl = {
    #   source  = "gavinbunney/kubectl"
    #   version = ">= 1.14"
    # }
    # helm = {
    #   source  = "hashicorp/helm"
    #   version = ">= 2.4.1"
    # }
    ct = {
      source  = "poseidon/ct"
      version = "0.11.0"
    }
  }

  backend "remote" {
    organization = "alleaffengaffen"

    workspaces {
      name = "banana_bread"
    }
  }
}

