# Script para criar um grupo de segurança

Import-Module Az.Resources

New-AzADGroup `
    -DisplayName "GrupoTeste" `
    -MailNickname "GrupoTeste" `
    -SecurityEnabled $true

Write-Output "Grupo 'GrupoTeste' criado com sucesso!"
