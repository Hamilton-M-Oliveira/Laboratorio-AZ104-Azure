# Habilitar SSPR para todos os usuários
az ad password reset-policy create \
  --name "SSPRPolicy" \
  --enabled true
