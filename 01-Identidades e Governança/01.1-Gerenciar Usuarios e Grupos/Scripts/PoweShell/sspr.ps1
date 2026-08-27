# Script para habilitar SSPR (Self-Service Password Reset) para um usuário

Import-Module AzureAD

Set-AzureADUser `
    -ObjectId "<USER_OBJECT_ID>" `
    -ForcePasswordChange $true

Write-Output "SSPR habilitado para o usuário."
