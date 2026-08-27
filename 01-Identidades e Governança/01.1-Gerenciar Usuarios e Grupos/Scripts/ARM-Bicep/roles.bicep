resource roleAssignment 'Microsoft.Authorization/roleAssignments@2020-04-01-preview' = {
  principalId: '<USER_OBJECT_ID>'
  roleDefinitionId: '<ROLE_DEFINITION_ID>'
  scope: subscription().id
}
