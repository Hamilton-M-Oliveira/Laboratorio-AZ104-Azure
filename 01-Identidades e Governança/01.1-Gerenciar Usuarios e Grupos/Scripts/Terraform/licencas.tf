# Script Terraform: Atribuição de licença a um usuário
resource "azuread_user_license" "licenca" {
  user_id = "<USER_OBJECT_ID>"
  sku_id  = "<SKU_ID>"
}
