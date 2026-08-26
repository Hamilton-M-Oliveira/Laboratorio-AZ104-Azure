# Criar usuário
az ad user create \
  --display-name "UsuarioTeste" \
  --user-principal-name usuario@dominio.com \
  --password "SenhaForte123!"

# Criar grupo de segurança
az ad group create \
  --display-name "GrupoSeguranca" \
  --mail-nickname "GrupoSeguranca"

# Adicionar usuário ao grupo
az ad group member add \
  --group "GrupoSeguranca" \
  --member-id <UserObjectId>
