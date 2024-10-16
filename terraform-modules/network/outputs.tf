output "vnet_Name" {
  value = "flexi-vnet-name"
}
output "vnet_Address" {
  value = ["10.0.0.0/16"]
}
output "vnet_Id" {
  value = "flexi-vnet-id"
}

output "subnet_Name" {
  value = ["flexi-subnet-name-1", "flexi-subnet-name-2"]
}
output "subnet_Id" {
  value = ["flexi-subnet-id-1", "flexi-subnet-id-2"]
}
output "subnet_CIDRAddress" {
  value = [["10.0.1.0/24"], ["10.0.2.0/24"]]
}
