output "ipaddress"
{
	value = "${aws_instance.firstMachine.public_ip}"
}
