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


  tags {
    "Name"           = "${var.my_team}-${var.product}-${var.environment}"
    "Application"    = "${var.my_team}-${var.product}"
    "Environment"    = "${var.environment}"
    "Service_type"   = "${var.service_type}"
    "Business_owner" = "${var.business_owner}"
  }
}
```
 **Variáveis**
 ------
 |      Nome                          |                      Descrição                      |  Default  |
 | -----------------------------------|-----------------------------------------------------|-----------|
 | spot_price                         | Nome do bucket                                      |    ""     |
 | ami                                | Habilita o versionamento de arquivos no bucket      |   false   |
 | instance_type                      | Configura tags para o bucket S3                     |    ""     |
 | key_name                           | Habilita a criação de objetos no bucket S3          |   false   |
 | account_id                         | Caminho do arquivo a ser criado no bucket S3        |    ""     |
 | target_capacity                    | Arquivos que sera enviado para o bucket S3          |    ""     |
 | wait_for_fulfillment               | Caminho de destino do arquivo no bucket             |    ""     |
 | azs                                | Caminho de origem do arquivo que sera enviado ao S3 |    ""     |
 | instance_interruption_behaviour    | Caminho de origem do arquivo que sera enviado ao S3 |    ""     |
 | terminate_instances_with_expiration| Caminho de origem do arquivo que sera enviado ao S3 |    ""     |

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