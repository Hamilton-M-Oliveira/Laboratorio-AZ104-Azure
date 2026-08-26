# Convidar usuário externo por e-mail
az ad user invite \
  --email "externo@parceiro.com" \
  --invite-message "Convite para colaborar no Azure"

# Convidar em lote via CSV
az ad user invite \
  --csv-file usuarios_externos.csv
