# launch instance in each public subnet
resource "aws_instance" "app-db" {
    ami = "${lookup(var.AMI, var.AWS_REGION)}"
    instance_type = "t2.micro"

    subnet_id = "${aws_subnet.public-subnet.id}"
    vpc_security_group_ids = ["${aws_security_group.wp-sg.id}"]
    key_name = var.key_name

    tags = {
        Name: "APP-Instance"
    }

      user_data = "${file("user_data.sh")}"
}
# // Sends your public key to the instance
# resource "aws_key_pair" "bastion-keypair" {
#     key_name = "bastion-kp"
# }

