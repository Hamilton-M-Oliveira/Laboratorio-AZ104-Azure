# Habilitar MFA para um usuário
az ad mfa policy create \
  --name "MFAObrigatoria" \
  --enforce true \
  --user <UserObjectId>
