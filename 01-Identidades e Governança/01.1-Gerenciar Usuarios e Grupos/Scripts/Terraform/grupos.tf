# Script Terraform: Criação de grupo de segurança no Azure AD
resource "azuread_group" "grupo" {
  display_name     = "GrupoTeste"
  security_enabled = true
}
