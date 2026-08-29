#Criar Resource Group:
#New-AzResourceGroup -Name "rg-labaz104" -Location "uksouth" 
$rg = "rg-labaz104"

#Criar uma VNET01:
#$virtualNetwork = New-AzVirtualNetwork -ResourceGroupName $rg -Location "uksouth" -Name "vnet-hub" -AddressPrefix 10.10.0.0/16

#Adicionar uma Subnet
#$subnetConfig = Add-AzVirtualNetworkSubnetConfig -Name "sub-hub01" -AddressPrefix 10.10.1.0/24 -VirtualNetwork $virtualNetwork

#Setar a Subsnet criada na VNET existente
#$virtualNetwork | Set-AzVirtualNetwork


#Criar uma VNET02:
$virtualNetwork = New-AzVirtualNetwork -ResourceGroupName $rg -Location "northeurope" -Name "vnet-spoke01" -AddressPrefix 10.11.0.0/16

#Adicionar uma Subnet
$subnetConfig = Add-AzVirtualNetworkSubnetConfig -Name "sub-spoke01" -AddressPrefix 10.11.1.0/24 -VirtualNetwork $virtualNetwork

#Setar a Subsnet criada na VNET existente
$virtualNetwork | Set-AzVirtualNetwork


#Criar uma VNET03:
$virtualNetwork = New-AzVirtualNetwork -ResourceGroupName $rg -Location "westeurope" -Name "vnet-spoke02" -AddressPrefix 10.12.0.0/16

#Adicionar uma Subnet
$subnetConfig = Add-AzVirtualNetworkSubnetConfig -Name "sub-spoke02" -AddressPrefix 10.12.1.0/24 -VirtualNetwork $virtualNetwork

#Setar a Subsnet criada na VNET existente
$virtualNetwork | Set-AzVirtualNetwork