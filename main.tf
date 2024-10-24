provider "aws" {
region = "us-west-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-0cf4e1fcfd8494d5b"
instance_type = "t2.medium"
key_name = "varsha"
vpc_security_group_ids = ["sg-042aea60981b72321"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1", "tomcat-2"]
}
