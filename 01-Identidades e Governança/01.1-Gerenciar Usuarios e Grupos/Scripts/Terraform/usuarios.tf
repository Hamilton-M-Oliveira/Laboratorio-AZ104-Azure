# Script Terraform: Criação de usuário 
resource "azuread_user" "usuario" {
  display_name        = "UsuarioTeste"
  user_principal_name = "usuario@dominio.com"
  password            = "SenhaForte123!"
}
