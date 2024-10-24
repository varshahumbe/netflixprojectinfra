provider "aws" {
region = "us-west-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-0cf4e1fcfd8494d5b "
instance_type = "t2.medium"
key_name = "rahull"
vpc_security_groups_ids = ["sg-0bf2d309bfd4f4204"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1", "tomcat-2"]
}
