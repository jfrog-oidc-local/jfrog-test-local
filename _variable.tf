variable "github_token" {
  type      = string
  sensitive = true
}
variable "jfrog_token" {
  description = "JFrog token"
  type        = string
  sensitive   = true
}
