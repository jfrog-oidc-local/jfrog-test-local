locals {
  default_claims = {
    enterprise = "moturi"
  }
}

resource "platform_oidc_configuration" "default" {
  name          = "test-jfrogtf-oidc"
  description   = "test terraform oidc configuration"
  issuer_url    = "https://token.actions.githubusercontent.com"
  provider_type = "GitHub"
  audience      = "test-jfrogtf-oidc"
}

resource "platform_oidc_identity_mapping" "all" {
  for_each = var.mappings

  name          = each.key
  priority      = index(keys(var.mappings), each.key) + 1
  description   = "mapping for ${each.key}"
  provider_name = platform_oidc_configuration.default.name

  claims_json = jsonencode(merge(each.value.claims, local.default_claims))

  token_spec = {
    username   = each.value.username
    scope      = "applied-permissions/user"
    audience   = "*@*"
    expires_in = 7200
  }
}
