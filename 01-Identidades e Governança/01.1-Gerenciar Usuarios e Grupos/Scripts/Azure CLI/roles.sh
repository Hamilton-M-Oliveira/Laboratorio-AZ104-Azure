# Atribuir role de Administrador de Usuários
az role assignment create \
  --assignee <UserObjectId> \
  --role "User Administrator" \
  --scope /subscriptions/<SubID>
