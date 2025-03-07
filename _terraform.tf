terraform {
  required_providers {
    platform = {
      source  = "jfrog/platform"
      version = "2.2.1"
    }
  }
  backend "s3" {
    bucket = "jfrog-state-store"
    key    = "jfrog-terraform/jfrog-oidc-terraform.tfstate"
    region = "eu-north-1"
  }
}
