terraform {
  required_providers {
    platform = {
      source  = "jfrog/platform"
      version = "1.11.0"
    }
    github = {
      source  = "integrations/github"
      version = "6.2.3"
    }
  }
  backend "s3" {
    bucket = "edvops-404188485533-us-east-1-tfstate-management-bucket"
    key    = "gtio-cloud-ops-jfrog-oidc-test/jfrog-oidc-terraform.tfstate"
    region = "us-east-1"
  }
}
