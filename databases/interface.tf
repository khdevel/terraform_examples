output "web_security_group_id" {
  value = "${aws_security_group.allow_web.id}"
}

output "db_security_group_id" {
  value = "${aws_security_group.allow_web_to_db.id}"
}

output "amis_ids" {
  value = "${data.aws_ami_ids.awslinux.ids[0]}"
}

output "s3_bucket_id" {
  value = "${aws_s3_bucket.remote_state.id}"
}
