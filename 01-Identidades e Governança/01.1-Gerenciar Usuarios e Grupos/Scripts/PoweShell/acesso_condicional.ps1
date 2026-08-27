# Script para criar uma política de acesso condicional

Import-Module AzureAD

New-AzureADMSConditionalAccessPolicy `
    -DisplayName "PoliticaTeste" `
    -State "enabled" `
    -Conditions @{Users=@{IncludeUsers=@("All")}} `
    -GrantControls @{BuiltInControls=@("mfa")}

Write-Output "Política de acesso condicional criada e habilitada."
