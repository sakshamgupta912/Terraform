## Subscription ID, Resource Group and Location set. These are kept universal in this code. ####
variable "subscription_id" {
  type    = string
  default = "your-subscription-id"
}
variable "location" {
  type    = string
  default = "eastus"
}
variable "rg_Name" {
  type    = string
  default = "myResourceGroup"
}

### VNET Module Variables Start ###

variable "vnet_Name" {
  type    = string
  default = "myVnet"
}
variable "vnet_Address" {
  type    = string
  default = "10.0.0.0/16"
}
variable "subnet_NameList" {
  type    = list(string)
  default = ["subnet1", "subnet2"]
}
variable "subnet_AddressList" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

## Pre defined KV details
variable "devKV_Name" {
  type    = string
  default = "myKeyVault"
}
#### Variables for Linux Virtual Module defined here ####

variable "vm_pip" {
  type        = string
  default     = "myPublicIP"
  description = "Name of the Public IP instance assigned to the Virtual Machine"
}
variable "pip_allocation" {
  type    = string
  default = "static"
  validation {
    condition     = contains(["static", "dynamic"], lower(var.pip_allocation))
    error_message = "Public IP assignment can be either Static or Dynamic. Please correct your selection."
  }
  description = "Public IP assignment type"
}
variable "vm_nic" {
  type        = string
  default     = "myNIC"
  description = "Network Interface card name assigned to the Virtual Machine"
}

variable "ip_configuration" {
  type        = string
  default     = "myIPConfig"
  description = "IP configuration name for the Virtual Machine."
}
variable "vm_name" {
  type        = string
  default     = "myVM"
  description = "Name of the Virtual Machine to be created."
}
variable "vm_size" {
  type        = string
  default     = "Standard_F2"
  description = "Virtual Machine \"Size\"SKU\" to be created such as : Standard_F2"
}
variable "vm_username" {
  type        = string
  default     = "azureuser"
  description = "Username for Azure Virtual Machine"
}
variable "vm_password" {
  type        = string
  default     = "P@ssw0rd1234"
  description = "Password for Azure Virtual Machine"
}

variable "vm_image_publisher" {
  type        = string
  default     = "Canonical"
  description = "Azure Virtual Machine Publisher such as : MicrosoftWindowsServer."
}
variable "vm_image_offer" {
  type        = string
  default     = "UbuntuServer"
  description = "Image Offer for the Publisher selected. Available options can be : WindowsServer."
}
variable "vm_image_sku" {
  type        = string
  default     = "18.04-LTS"
  description = "Image Version or SKU for the publisher you have chosen. Such as 2019-Datacenter, 2016-Datacenter, etc."
}
variable "vm_image_version" {
  type        = string
  default     = "latest"
  description = "This is the Image Version of the SKU that you have selected. Usually the selected option is \"Latest\". "
}
variable "vm_os_disk_strg_type" {
  type        = string
  default     = "Standard_LRS"
  description = "OS Disk Storage Type. Possible options are Standard_LRS, StandardSSD_LRS and Premium_LRS."
}

variable "vm_os_disk_caching" {
  type        = string
  default     = "ReadWrite"
  description = "The Type of Caching which should be used for the Internal OS Disk. Possible values are None, ReadOnly and ReadWrite."

}

variable "virtual_machine_Usr" {
  type        = string
  default     = "kv-username"
  description = "Username for Azure Virtual Machine. This will be fetched from Key Vault."
}

variable "virtual_machine_Passwd" {
  type        = string
  default     = "kv-password"
  description = "Password for Azure Virtual Machine. This will be fetched from Key Vault."
}

# variable "vm_subnetid" {
#   type        = string
#   description = "Subnet Id for the Virtual machine. This will be fetched from Network Module."
# }