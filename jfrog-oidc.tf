provider "platform" {
  url = "https://moturi.jfrog.io"
  access_token = var.jfrog_token
}

module "jfrog-oidc" {
  source = "./modules"
  mappings = {
    "jfrog-oidc-local" = {
      username = "Moturibabu"
      claims = {
        repository_owner = "Moturibabu"
      }
    }
  }
}
