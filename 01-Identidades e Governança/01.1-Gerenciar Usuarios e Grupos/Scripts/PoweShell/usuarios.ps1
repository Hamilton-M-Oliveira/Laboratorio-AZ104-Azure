# Este exemplo cria um usuário básico com senha inicial

# Importa o módulo necessário
Import-Module Az.Resources

# Cria o usuário
New-AzADUser `
    -DisplayName "UsuarioTeste" `
    -UserPrincipalName "usuario@dominio.com" `
    -PasswordProfile @{Password="SenhaForte123!"} `
    -MailNickname "UsuarioTeste"

Write-Output "Usuário 'UsuarioTeste' criado com sucesso!"
