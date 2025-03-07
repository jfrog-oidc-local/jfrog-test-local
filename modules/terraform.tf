terraform {
  required_providers {
    artifactory = {
      source  = "jfrog/artifactory"
      version = "12.7.1"
    }
    platform = {
      source  = "jfrog/platform"
      version = "2.2.1"
    }
  }
}

# terraform {
#   required_providers {
#     platform = {
#       source  = "jfrog/platform"
#       version = "1.11.0"
#     }
#   }
# }
