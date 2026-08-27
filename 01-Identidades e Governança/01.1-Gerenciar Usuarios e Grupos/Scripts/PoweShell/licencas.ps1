# Script para atribuir uma licença a um usuário

Import-Module AzureAD

Set-AzureADUserLicense `
    -ObjectId "<USER_OBJECT_ID>" `
    -AssignedLicenses @{SkuId="<SKU_ID>"}

Write-Output "Licença atribuída ao usuário."
