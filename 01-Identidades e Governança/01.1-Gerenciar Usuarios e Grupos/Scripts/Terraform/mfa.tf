# Script Terraform: Habilitar MFA para um usuário
resource "azuread_user" "mfa" {
  object_id = "<USER_OBJECT_ID>"
  # Dependendo do provider, ajuste o campo de MFA
}
