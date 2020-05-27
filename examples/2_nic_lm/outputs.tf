# outputs from example license manager

## OUTPUTS ###

output "bigiq_mgmt_private_ip" { value = "${azurerm_network_interface.vm01-mgmt-nic.private_ip_address}" }
output "bigiq_mgmt_public_ip" { 
    depends_on          = [azurerm_virtual_machine_extension.f5vm01-run-startup-cmd]
    value = data.azurerm_public_ip.managementPublicAddress.ip_address
}
output "bigiq_discovery_private_ip" { value = "${azurerm_network_interface.vm01-ext-nic.private_ip_address}" }
