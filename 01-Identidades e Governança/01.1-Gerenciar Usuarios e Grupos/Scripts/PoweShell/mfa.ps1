# Script para habilitar MFA (Multi-Factor Authentication) para um usuário

Import-Module MSOnline

Set-MsolUser `
    -UserPrincipalName "usuario@dominio.com" `
    -StrongAuthenticationRequirements @(@{RelyingParty="*";State="Enabled"})

Write-Output "MFA habilitado para usuario@dominio.com"
