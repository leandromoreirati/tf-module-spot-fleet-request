locals {
    files_list = [
        "${md5(file("${path.module}/main.tf"))}",
        "${md5(file("${path.module}/output.tf"))}",
        "${md5(file("${path.module}/variables.tf"))}",
    ]
    current_deployment = "${join("", local.files_list)}"
}

resource "aws_spot_fleet_request" "spot_fleet_request" {
  /* iam_fleet_role   = "${aws_iam_role.instance_spot_fleet_request.arn}" */
  iam_fleet_role      = "arn:aws:iam::897978524316:role/aws-service-role/spotfleet.amazonaws.com/AWSServiceRoleForEC2SpotFleet"
  spot_price          = "${var.spot_price}"
  target_capacity     = "${var.target_capacity}"
  allocation_strategy = "${var.allocation_strategy}"
  /* valid_until      = "2019-11-04T20:44:20Z" */
  wait_for_fulfillment = "${var.wait_for_fulfillment}"
  instance_interruption_behaviour = "${var.instance_interruption_behaviour}"
  terminate_instances_with_expiration = "${var.terminate_instances_with_expiration}"

  launch_specification {
    instance_type     = "${var.instance_type}"
    ami               = "${var.ami}"
    key_name          = "${var.key_name}"
    availability_zone = "${var.azs}"

    tags = "${var.tags}"

  }

/*   launch_specification {
    instance_type     = "m5.large"
    ami               = "ami-d06a90b0"
    key_name          = "my-key"
    availability_zone = "us-east-1"

    tags = "${var.tags}"
    
  } */


 }