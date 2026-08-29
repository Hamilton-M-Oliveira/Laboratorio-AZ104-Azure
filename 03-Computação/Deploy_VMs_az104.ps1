# Connect Azure Account
Connect-AzAccount

# Variables for common values
$resourceGroup = "rg-labaz104"
$location02 = "northeurope"
$location03 = "westeurope"
$vmName01 = "vm-intra01"
$vmName02 = "vm-intra02"
$vmName03 = "vm-web01"
$vmName04 = "vm-web02"
$vnet02 = "vnet-spoke01"
$vnet03 = "vnet-spoke02"
$subnet02 = "sub-spoke01"
$subnet03 = "sub-spoke02"

# Create user object
$cred = Get-Credential -Message "Enter a username and password for the virtual machine."

# Create VM-INTRA01
  
#Get the subnet details for the specified virtual network + subnet combination.
$azureVnetSubnet02 = (Get-AzVirtualNetwork -Name $vnet02 -ResourceGroupName $resourceGroup).Subnets | Where-Object {$_.Name -eq $subnet02}  

# Create a virtual network card and associate with public IP address and NSG
$nic01 = New-AzNetworkInterface -Name "vmintra01nic" -ResourceGroupName $resourceGroup -Location $location02 -SubnetId $azureVnetSubnet02.Id
  
# Create a virtual machine configuration
$vmConfig01 = New-AzVMConfig -VMName $vmName01 -VMSize Standard_B2S | `
Set-AzVMOperatingSystem -Windows -ComputerName $vmName01 -Credential $cred | `
Set-AzVMSourceImage -PublisherName MicrosoftWindowsServer -Offer WindowsServer -Skus 2022-Datacenter -Version latest | `
Add-AzVMNetworkInterface -Id $nic01.Id

# Create a virtual machine
New-AzVM -ResourceGroupName $resourceGroup -Location $location02 -VM $vmConfig01



# Create VM-INTRA02
  
#Get the subnet details for the specified virtual network + subnet combination.
$azureVnetSubnet02 = (Get-AzVirtualNetwork -Name $vnet02 -ResourceGroupName $resourceGroup).Subnets | Where-Object {$_.Name -eq $subnet02}  

# Create a virtual network card and associate with public IP address and NSG
$nic02 = New-AzNetworkInterface -Name "vmintra02nic" -ResourceGroupName $resourceGroup -Location $location02 -SubnetId $azureVnetSubnet02.Id
  
# Create a virtual machine configuration
$vmConfig02 = New-AzVMConfig -VMName $vmName02 -VMSize Standard_B2S | `
Set-AzVMOperatingSystem -Windows -ComputerName $vmName02 -Credential $cred | `
Set-AzVMSourceImage -PublisherName MicrosoftWindowsServer -Offer WindowsServer -Skus 2022-Datacenter -Version latest | `
Add-AzVMNetworkInterface -Id $nic02.Id

# Create a virtual machine
New-AzVM -ResourceGroupName $resourceGroup -Location $location02 -VM $vmConfig02




# Create VM-WEB01
  
#Get the subnet details for the specified virtual network + subnet combination.
$azureVnetSubnet03 = (Get-AzVirtualNetwork -Name $vnet03 -ResourceGroupName $resourceGroup).Subnets | Where-Object {$_.Name -eq $subnet03}  

# Create a virtual network card and associate with public IP address and NSG
$nic03 = New-AzNetworkInterface -Name "vmweb01nic" -ResourceGroupName $resourceGroup -Location $location03 -SubnetId $azureVnetSubnet03.Id
  
# Create a virtual machine configuration
$vmConfig03 = New-AzVMConfig -VMName $vmName03 -VMSize Standard_B2S | `
Set-AzVMOperatingSystem -Windows -ComputerName $vmName03 -Credential $cred | `
Set-AzVMSourceImage -PublisherName MicrosoftWindowsServer -Offer WindowsServer -Skus 2022-Datacenter -Version latest | `
Add-AzVMNetworkInterface -Id $nic03.Id

# Create a virtual machine
New-AzVM -ResourceGroupName $resourceGroup -Location $location03 -VM $vmConfig03



# Create VM-WEB02
  
#Get the subnet details for the specified virtual network + subnet combination.
$azureVnetSubnet04 = (Get-AzVirtualNetwork -Name $vnet03 -ResourceGroupName $resourceGroup).Subnets | Where-Object {$_.Name -eq $subnet03}  

# Create a virtual network card and associate with public IP address and NSG
$nic04 = New-AzNetworkInterface -Name "vmweb02nic" -ResourceGroupName $resourceGroup -Location $location03 -SubnetId $azureVnetSubnet04.Id
  
# Create a virtual machine configuration
$vmConfig04 = New-AzVMConfig -VMName $vmName04 -VMSize Standard_B2S | `
Set-AzVMOperatingSystem -Windows -ComputerName $vmName04 -Credential $cred | `
Set-AzVMSourceImage -PublisherName MicrosoftWindowsServer -Offer WindowsServer -Skus 2022-Datacenter -Version latest | `
Add-AzVMNetworkInterface -Id $nic04.Id

# Create a virtual machine
New-AzVM -ResourceGroupName $resourceGroup -Location $location03 -VM $vmConfig04