provider "aws" {
  region = "${var.region}"
}

data "aws_ami_ids" "awslinux" {
  owners = ["self"]

  filter {
    name   = "name"
    values = ["myWebAMI"]
  }
}
