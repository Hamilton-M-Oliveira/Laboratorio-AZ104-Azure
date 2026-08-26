# Criar política de acesso condicional exigindo MFA
az ad conditional-access policy create \
  --name "MFA-Obrigatoria" \
  --state enabled \
  --conditions-users "all" \
  --grant-controls "mfa"
