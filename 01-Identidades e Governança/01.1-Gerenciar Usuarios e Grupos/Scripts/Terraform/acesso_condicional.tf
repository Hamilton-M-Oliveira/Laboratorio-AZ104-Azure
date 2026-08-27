# Script Terraform: Criar política de acesso condicional
resource "azuread_conditional_access_policy" "politica" {
  display_name = "PoliticaTeste"
  state        = "enabled"

  conditions {
    users {
      include_users = ["All"]
    }
  }

  grant_controls {
    built_in_controls = ["mfa"]
  }
}
