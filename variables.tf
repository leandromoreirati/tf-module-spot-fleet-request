variable "name" {
  default = ""
  description = "Launch Template name."
}

variable "tags" {
  type    = "map"
  default = {}
  description = "Setting tags for the feature." 
}

variable "vpc_id" {
  default = ""
  description = "VPC ID"
}

variable "private_subnet" {
  default = ""
  description = "Subnet ID "
}

variable "tenancy" {
  default = "default"
  description = "The tenancy of the instance (if the instance is running in a VPC). Can be default, dedicated, or host."
}

variable "monitoring" {
  default = "false"
  description = "The monitoring option for the instance."
}

variable "public_ip_association" {
  default = "false"
  description = "Associate a public ip address with the network interface."
}

variable "my_team" {
  default = ""
  default = "Team owner application."
}

variable "product" {
  default = ""
  description = "Product our project name."
}

variable "business_owner" {
  default = ""
  description = "Business owner."
}

variable "service_type" {
  default = ""
  description = "Type of service."
}

variable "ami" {
  default = ""
  description = "ID AMI image."
}

variable "key_name" {
  default = ""
  description = "Key pair name."
}

variable "instance_type" {
  default = ""
  description = "Type of EC2 instance."
}

variable "azs" {
  default = ""
  description = "Availability zones."
}

variable "environment" {
  default = ""
  description = "Application environment."
}

variable "volume_size" {
  default = ""
  description = "The size of the volume in gigabytes"
}

variable "volume_type" {
  default = "standard"
  description = "The type of volume (standard, gp2, or io1)."
}

variable "delete_on_termination" {
  default = "false"
  description = "Whether the volume should be destroyed on instance termination."
}

variable "device_name" {
  default = ""
  description = "The name of the device to mount."
}

variable "allocation_strategy" {
  default = "lowestPrice"
  description = "Indicates how to allocate the target capacity across the Spot pools specified by the Spot fleet request."
}

variable "spot_price" {
  default = ""
  description = "The maximum bid price per unit hour."
}

variable "region" {
  default = ""
  description = "AWS Region."
}

variable "account_id" {
  default = ""
  description = "AWS Account ID."
}

variable "target_capacity" {
  default = ""
  description = "Número de instancias spot a serem solicitados."
}

variable "wait_for_fulfillment" {
  default = "false"
  description = "If set, Terraform will wait for the Spot Request to be fulfilled, and will throw an error if the timeout of 10m is reached"
}
variable "instance_interruption_behaviour" {
  default = "terminame"
  description = "ndicates whether a Spot instance stops or terminates when it is interrupted."
}

variable "terminate_instances_with_expiration" {
  default = "true"
  description = "Indicates whether running Spot instances should be terminated when the Spot fleet request expires."
}