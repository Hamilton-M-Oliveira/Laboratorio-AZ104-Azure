# Atribuir licença Premium P1 a um usuário
az ad user license assign \
  --user <UserObjectId> \
  --sku-id <PremiumP1SkuId>
