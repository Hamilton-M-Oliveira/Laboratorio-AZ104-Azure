# Script Terraform: Atribuição de role (RBAC) a um usuário
resource "azurerm_role_assignment" "role" {
  principal_id         = "<USER_OBJECT_ID>"
  role_definition_name = "Reader"
  scope                = "/subscriptions/<ID_ASSINATURA>"
}
