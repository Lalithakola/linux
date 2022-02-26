resource "aws_instance" "web-1" {
   	ami = "ami-002068ed284fb165b"
    availability_zone = "us-east-2a"
    instance_type = "t2.micro"
    key_name = "Sai"
    subnet_id = "${aws_subnet.subnet1-public.id}"
    vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
    associate_public_ip_address = true	
    tags = {
        Name = "Server-Sudheer"
        Env = "Prod"
        Owner = "Sasi"
    }
}
