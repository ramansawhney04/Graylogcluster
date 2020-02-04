resource "aws_instance" "firstMachine"
{
 ami= "ami-09bfeda7337019518"
 instance_type = "t2.micro"
 vpc_security_group_ids = ["${aws_security_group.terraformAccess.id}"]
 key_name="Ansibletest"

 # Add basic server for test
 #user_data =<<-EOF
    #!/bin/bash
   # echo "hello world">index.html
   # nohup busybox httpd -f -p "${var.server_port}" &
   # EOF


 tags {
	Name = "Terraform-testMachine"
}

}

resource "aws_security_group" "terraformAccess"
{
	name= "Terraform example access"
	ingress {
 		  from_port = "${var.server_port}"
   		  to_port   = "${var.server_port}"
                  protocol  = "tcp"
                  cidr_blocks = ["0.0.0.0/0"]

		}
	ingress {
		  from_port = 22
                  to_port   = 22
                  protocol  = "tcp"
                  cidr_blocks =["0.0.0.0/0"]
		}

    ingress {
       from_port = -1
       to_port = -1
       protocol = "icmp"
       cidr_blocks = ["0.0.0.0/0"]
}

  egress {
      to_port = 0
                from_port =0
                protocol  = "-1"
                cidr_blocks=["0.0.0.0/0"]

  }
}
# changing the code
