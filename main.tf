#provider "aws" {
#  region  = "${var.aws-region}"
 # profile = "${var.aws-profile}"
#}

resource "aws_instance" "TERRAGRUNT1" {
  ami                         = "${var.ami}"
  instance_type               = "${var.instance_type}"
 
  #iam_instance_profile        = "${var.iam-role-name != "" ? var.iam-role-name : ""}"
  #key_name                    = "${var.instance-key-name != "" ? var.instance-key-name : ""}"
  associate_public_ip_address = "${var.associate_public_ip_address}"
  # user_data                   = "${file("${var.user-data-script}")}"
 # user_data                   = "${var.user-data-script != "" ? file("${var.user-data-script}") : ""}"
  vpc_security_group_ids      = ["${aws_security_group.sg.id}"]
  subnet_id                   = "${aws_subnet.subnet.id}"

 # tags = {
 #   Name = "${var.tags}"
 # }
}
