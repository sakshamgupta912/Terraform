subscription_id = "12345678-1234-1234-1234-123456789012"
## Pre Defined KV for storing secret
devKV_Name         = "iac-prod"       #### We have to change as per env

## VNET - SUBNET
rg_Name            = "Prod-ResourceGroup" ## We have to change as per env
location           = "westus"
vnet_Name          = "vnet-terraform-modulesprod-wus"
vnet_Address       = "10.0.0.0/16"
subnet_NameList    = ["snet-aks-terraform-modulesprod-wus", "snet-agw-terraform-modulesprod-wus", "snet-shared-terraform-modulesprod-wus", "snet-vm-terraform-modulesprod-wus", "GatewaySubnet"]
subnet_AddressList = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24", "10.0.5.0/24"]

### Linux Virtual Machine Deployment

virtual_machine_Usr    = "prod-vm-user"
virtual_machine_Passwd = "prod-vm-password"
vm_pip                 = "public_ip_prod"
pip_allocation         = "Static"
vm_nic                 = "prod_vm_nic"
ip_configuration       = "ip_config_prod"
vm_name                = "prod-terra-vm"
vm_size                = "Standard_D2s_v3"
vm_username            = "prodAdmin" ## Fetched from KV.
vm_password            = "prodPassword123" ## Fetched from KV.
vm_image_publisher     = "Canonical"
vm_image_offer         = "UbuntuServer"
vm_image_sku           = "18.04-LTS"
vm_image_version       = "latest"
vm_os_disk_strg_type   = "Premium_LRS"
vm_os_disk_caching     = "ReadWrite"
