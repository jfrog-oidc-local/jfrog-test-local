variable "mappings" {
  type = map(object({
    claims = map(string)
    username = string
  }))
}

