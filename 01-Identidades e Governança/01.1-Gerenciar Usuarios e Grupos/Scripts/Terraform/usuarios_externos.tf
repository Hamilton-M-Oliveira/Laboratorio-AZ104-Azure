# Script Terraform: Convite de usuário externo (B2B) para o tenant
resource "azuread_invitation" "usuario_externo" {
  invited_user_email_address = "usuarioexterno@outlook.com"
  redirect_url               = "https://portal.azure.com"
}
