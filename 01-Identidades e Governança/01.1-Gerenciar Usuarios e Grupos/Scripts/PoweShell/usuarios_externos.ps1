# Script para convidar um usuário externo (B2B) para o tenant

Import-Module Az.Resources

New-AzADInvitation `
    -InvitedUserEmailAddress "usuarioexterno@outlook.com" `
    -InviteRedirectUrl "https://portal.azure.com"

Write-Output "Convite enviado para usuarioexterno@outlook.com"
