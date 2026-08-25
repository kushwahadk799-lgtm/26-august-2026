module "resource-group" {
  source         = "../../Module/resource-group"
  resource_group = var.resource_group
}

module "virtual-network" {
  source          = "../../module/virtual-network"
  virtual_network = var.virtual_network
  depends_on      = [module.resource-group]
}

module "subnet" {
  source     = "../../module/subnet"
  subnet     = var.subnet
  depends_on = [module.virtual-network]
}

module "network_security_group" {
  source                 = "../../module/network_security_group"
  network_security_group = var.network_security_group
  depends_on             = [module.resource-group]
}

module "pip" {
  source     = "../../module/pip"
  pip        = var.pip
  depends_on = [module.resource-group]
}

module "nic" {
  source     = "../../module/nic"
  nic        = var.nic
  depends_on = [module.pip, module.subnet]
}

module "vm" {
  source     = "../../module/vm"
  vm         = var.vm
  depends_on = [module.nic]

}






