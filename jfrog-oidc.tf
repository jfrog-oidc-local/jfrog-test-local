provider "platform" {
  url = "https://moturi.jfrog.io"
  access_token = var.jfrog_token
}

module "jfrog-oidc" {
  source = "./modules"
  mappings = {
    "jfrog-oidc-local" = {
      username = "test-user"
      claims = {
        repository_owner = "jfrog-oidc-local"
      }
    },
  
      "oidc-test-jfrog" = {
          username = "ttd-svc-gha-user"
          claims = {
           repository_owner = "oidc-test-jfrog"
           }
    }

  }
}
