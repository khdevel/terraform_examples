output "web_security_group_id" {
  value = "${aws_security_group.allow_web.id}"
}

output "db_security_group_id" {
  value = "${aws_security_group.allow_web_to_db.id}"
}

output "amis_ids" {
  value = "${data.aws_ami_ids.awslinux.ids[0]}"
}
