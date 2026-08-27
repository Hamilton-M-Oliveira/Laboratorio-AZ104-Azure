# Script para atribuir uma role (permissão) a um usuário

Import-Module Az.Resources

New-AzRoleAssignment `
    -ObjectId "<USER_OBJECT_ID>" `
    -RoleDefinitionName "Reader" `
    -Scope "/subscriptions/<ID_ASSINATURA>"

Write-Output "Role 'Reader' atribuída ao usuário."
