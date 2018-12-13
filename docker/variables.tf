variable "access_key" {
    description = "The AWS access key."
    default = "AKIAJ2U5JTHRKUDFGI2Q"
}

variable "secret_key" {
    description = "The AWS secret key."
    default = "Eq5Mfx6VckCyiqh01KiCRGtFT0Q139wmHZvKxnNz"
}

variable "region" {
    description = "The AWS region to create resources in."
    default = "us-west-2"
}

variable "server_port"
{
 	 description = "The port of server on which server listen"
  	default = 80
}
