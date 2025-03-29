provider "aws"{
region = "ap-south-1"
}

resource "aws_instance" "one"{
count = 2
ami = "ami-0c9361875f5ad032c"
instance_type = "t2.micro"
key_name = "NEW_VALUE"
vpc_security_group_ids = ["sg-0c70ac40e22b993f1"]
tags ={
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "Appserver-1", "Appserver-2","Monitoring server"]
}
