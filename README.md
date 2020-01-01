![alt text](https://www.terraform.io/assets/images/logo-hashicorp-3f10732f.svg)

# ** tf-module-spot-fleet-request **

Terraform module for creation of spot fleet request (Spot Fleet Request).

**Requirements**
  - Terraform
  - AWS Account
  
**Dependencies**
  - Not applicable.

**Example of use**
 ------
 ```
module "spot_fleet_request" {
  source = "https://github.com/leandromoreirati/tf-module-spot_fleet_request.git"

  name       = "${var.my_team}-${var.product}-${var.environment}"

  spot_price            = "${var.spot_price}"
  ami                   = "${var.ami}" 
  instance_type         = "${var.instance_type}"
  key_name              = "${var.key_name}"
  account_id            = "${var.account_id}"
  target_capacity       = "${var.target_capacity}"
  wait_for_fulfillment  = "${var.wait_for_fulfillment}"
  azs                   =  "${var.azs}"
  instance_interruption_behaviour = "${var.instance_interruption_behaviour}"
  terminate_instances_with_expiration = "${var.terminate_instances_with_expiration}" 


  tags = {
    "Tag01" = "Value01"
    "Tag02" = "Value02"
    "Tag03" = "Value03"
    "Tag04" = "Value04"
  }
}
```
 **Variáveis**
 ------
 |       Nome                         |                                             Descrição                                            |  Default     |
 | -----------------------------------|--------------------------------------------------------------------------------------------------|:------------:|
 | spot_price                         | The maximum bid price per unit hour                                                              |      ""      |
 | ami                                | AMI ID                                                                                           |      ""      |
 | instance_type                      | Instance Type EC2                                                                                |      ""      |
 | key_name                           | Key Pair Name                                                                                    |      ""      |
 | account_id                         | AWS Account ID                                                                                   |      ""      |
 | target_capacity                    | The number of units to request                                                                   |      ""      |
 | wait_for_fulfillment               | If set, Terraform will wait for the Spot Request to be fulfilled                                 |    "10m"     |
 | azs                                | Availability Zone                                                                                |      ""      |
 | instance_interruption_behaviour    | Indicates whether a Spot instance stops or terminates when it is interrupted                     |  "terminate" |
 | terminate_instances_with_expiration| Indicates whether running Spot instances should be terminated when the Spot fleet request expires|      ""      |

 **Outputs**
 ------
 |            Nome         |                               Valor                            |
 | ----------------------- |:--------------------------------------------------------------:|
 | spot_fleet_request_id   | aws_spot_fleet_request.spot_fleet_request.id                |
 | spot_fleet_request_state| aws_spot_fleet_request.spot_fleet_request.spot_request_state|

**External Documentation**
 - [Solicitação de Frota spot](https://docs.aws.amazon.com/pt_br/AWSEC2/latest/UserGuide/spot-fleet-requests.html)
 - [Terraform Spot Fleet Request](https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html)

  **Created Features**
  ------
  - Spot Fleet Request