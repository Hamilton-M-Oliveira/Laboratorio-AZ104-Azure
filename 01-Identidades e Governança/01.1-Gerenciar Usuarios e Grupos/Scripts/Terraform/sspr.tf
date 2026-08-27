# Script Terraform: Forçar troca de senha (SSPR)
resource "azuread_user" "sspr" {
  object_id             = "<USER_OBJECT_ID>"
  force_password_change = true
}
