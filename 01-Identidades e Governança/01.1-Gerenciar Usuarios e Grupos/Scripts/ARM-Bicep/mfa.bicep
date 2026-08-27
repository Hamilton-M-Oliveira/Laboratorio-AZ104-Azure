resource mfa 'Microsoft.Graph/users@1.0' = {
  id: '<USER_OBJECT_ID>'
  strongAuthenticationRequirements: [
    {
      state: 'enabled'
    }
  ]
}
