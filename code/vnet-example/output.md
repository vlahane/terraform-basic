### terraform plan -out m4.tfplan
```
Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:        

  # azurerm_resource_group.demo_rg[0] will be created
  + resource "azurerm_resource_group" "demo_rg" {    
      + id       = (known after apply)
      + location = "eastus2"
      + name     = "vishal-test-terraform"
    }

  # azurerm_virtual_network.example will be created
  + resource "azurerm_virtual_network" "example" {
      + address_space       = [
          + "10.0.0.0/16",
        ]
      + dns_servers         = (known after apply)
      + guid                = (known after apply)
      + id                  = (known after apply)
      + location            = "eastus2"
      + name                = "example-network"
      + resource_group_name = "vishal-test-terraform"
      + subnet              = [
          + {
              + address_prefix = "10.0.1.0/24"
              + id             = (known after apply)
              + name           = "subnet1"
              + security_group = ""
            },
          + {
              + address_prefix = "10.0.2.0/24"
              + id             = (known after apply)
              + name           = "subnet2"
              + security_group = ""
            },
        ]
      + tags                = {
          + "year" = "2024"
        }
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + vnetId = (known after apply)

───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── 

Saved the plan to: m4.tfplan

To perform exactly these actions, run the following command to apply:
    terraform apply "m4.tfplan"
```

### terraform apply "m4.tfplan"
```
azurerm_resource_group.demo_rg[0]: Creating...
azurerm_resource_group.demo_rg[0]: Creation complete after 5s [id=/subscriptions/xxxx/resourceGroups/vishal-test-terraform]
azurerm_virtual_network.example: Creating...
azurerm_virtual_network.example: Still creating... [10s elapsed]
azurerm_virtual_network.example: Creation complete after 19s [id=/subscriptions/xxxx/resourceGroups/vishal-test-terraform/providers/Microsoft.Network/virtualNetworks/example-network]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

Outputs:

vnetId = "/subscriptions/xxxx/resourceGroups/vishal-test-terraform/providers/Microsoft.Network/virtualNetworks/example-network"
```

### terraform show
```
# azurerm_resource_group.demo_rg[0]:
resource "azurerm_resource_group" "demo_rg" {
    id       = "/subscriptions/xxxx/resourceGroups/vishal-test-terraform"
    location = "eastus2"
    name     = "vishal-test-terraform"
}

# azurerm_virtual_network.example:
resource "azurerm_virtual_network" "example" {
    address_space           = [
        "10.0.0.0/16",
    ]
    dns_servers             = []
    flow_timeout_in_minutes = 0
    guid                    = "134b1119-c225-43c6-ab35-0586f9a1aa67"
    id                      = "/subscriptions/xxxx/resourceGroups/vishal-test-terraform/providers/Microsoft.Network/virtualNetworks/example-network"
    location                = "eastus2"
    name                    = "example-network"
    resource_group_name     = "vishal-test-terraform"
    subnet                  = [
        {
            address_prefix = "10.0.1.0/24"
            id             = "/subscriptions/xxxx/resourceGroups/vishal-test-terraform/providers/Microsoft.Network/virtualNetworks/example-network/subnets/subnet1"   
            name           = "subnet1"
            security_group = ""
        },
        {
            address_prefix = "10.0.2.0/24"
            id             = "/subscriptions/xxxx/resourceGroups/vishal-test-terraform/providers/Microsoft.Network/virtualNetworks/example-network/subnets/subnet2"   
            name           = "subnet2"
            security_group = ""
        },
    ]
    tags                    = {
        "year" = "2024"
    }
}


Outputs:

vnetId = "/subscriptions/xxxx/resourceGroups/vishal-test-terraform/providers/Microsoft.Network/virtualNetworks/example-network"
```
### terraform output
```
vnetId = "/subscriptions/xxxx/resourceGroups/vishal-test-terraform/providers/Microsoft.Network/virtualNetworks/example-network"
```