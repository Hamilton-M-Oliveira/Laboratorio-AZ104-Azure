resource usuario 'Microsoft.Graph/users@1.0' = {
  displayName: 'UsuarioTeste'
  userPrincipalName: 'usuario@dominio.com'
  passwordProfile: {
    password: 'SenhaForte123!'
  }
}
