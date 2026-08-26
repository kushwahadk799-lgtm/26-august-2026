resource_group = {
  rg1 = {
    name     = "rg-Mritunjay"
    location = "east asia"
  }
 rg2 = {
    name     = "rg-tuesday"
    location = "east asia"
  }
}

virtual_network = {
  vnet1 = {
    name                = "vnet-bhai"
    location            = "east asia"
    resource_group_name = "rg-Mritunjay"
    address_space       = ["10.0.0.0/16"]
  }
}

subnet = {
  subnet_1 = {
    name                 = "subnet-apna"
    resource_group_name  = "rg-Mritunjay"
    virtual_network_name = "vnet-bhai"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet_2 = {
    name                 = "subnet-apna-apna"
    resource_group_name  = "rg-Mritunjay"
    virtual_network_name = "vnet-bhai"
    address_prefixes     = ["10.0.2.0/24"]
  }
}

network_security_group = {
  nsg-1 = {
    name                = "nsg-121"
    location            = "east asia"
    resource_group_name = "rg-Mritunjay"
  }
}

nic = {
  nic1 = {
    name                 = "nic_internal"
    location             = "east asia"
    resource_group_name  = "rg-Mritunjay"
    subnet_name          = "subnet-apna"
    virtual_network_name = "vnet-bhai"
    public_ip_name       = "pip-one"
  }
}

pip = {
  pip = {
    name                = "pip-one"
    resource_group_name = "rg-Mritunjay"
    location            = "east asia"
  }
}

vm = {
  vm1 = {
    name                = "vm-monday"
    location            = "east asia"
    resource_group_name = "rg-Mritunjay"
    nic_name            = "nic_internal"

  }

}