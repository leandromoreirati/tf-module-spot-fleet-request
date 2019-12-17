

/* SPOT FLEET REQUEST */
output "spot_fleet_request_id" {
  value = "${aws_spot_fleet_request.spot_fleet_request.id}"
}

output "spot_fleet_request_state" {
  value = "${aws_spot_fleet_request.spot_fleet_request.spot_request_state}"
}
