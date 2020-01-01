![alt text](https://www.terraform.io/assets/images/logo-hashicorp-3f10732f.svg)

# **tf-module-spot_fleet_request**

Módulo Terraform para criação de requisição de frota spot (Spot Fleet Request).

  **Requisitos**
 - Terraform
 - AWS Account
  
**Dependências**
 - Não se aplica.

**Exemplo de Uso**
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
 |      Nome                          |                                            Descrição                                                    |  Default  |
 | -----------------------------------|---------------------------------------------------------------------------------------------------------|:---------:|
 | spot_price                         | O preço máximo do lance por unidade de hora                                                             |    ""     |
 | ami                                | ID da AMI                                                                                               |    ""     |
 | instance_type                      | Tipo de instância EC2                                                                                   |    ""     |
 | key_name                           | Nome do par de chaves                                                                                   |    ""     |
 | account_id                         | ID da conta da AWS                                                                                      |    ""     |
 | target_capacity                    | O número de unidades a serem solicitadas                                                                |    ""     |
 | wait_for_fulfillment               | Se definido, o Terraform aguardará a solicitação do Spot ser atendida                                   |  "10m"    |
 | azs                                | Zona de disponibilidade                                                                                 |    ""     |
 | instance_interruption_behaviour    | Indica se uma instância Spot para ou termina quando é interrompida                                      |"terminate"|
 | terminate_instances_with_expiration| Indica se as instâncias Spot em execução devem ser encerradas quando a solicitação da frota Spot expirar|    ""     |

 **Outputs**
 ------
 |            Nome         |                               Valor                            |
 | ----------------------- |:--------------------------------------------------------------:|
 | spot_fleet_request_id   | aws_spot_fleet_request.spot_fleet_request.id                |
 | spot_fleet_request_state| aws_spot_fleet_request.spot_fleet_request.spot_request_state|

 **Documentação externa**
 - [Solicitação de Frota spot](https://docs.aws.amazon.com/pt_br/AWSEC2/latest/UserGuide/spot-fleet-requests.html)
 - [Terraform Spot Fleet Request](https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html)

 **Recursos Criados**
 ------
 - Requisção de frota spot (Spot Fleet Request)