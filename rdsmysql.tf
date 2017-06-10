resource "aws_db_instance" "default" {
  allocated_storage      = 5
  storage_type           = "gp2"
  engine                 = "mysql"
  engine_version         = "5.6.27"
  instance_class         = "db.t2.micro"
  name                   = "asterisk"
  username               = "asterisk"
  password               = "asterisk"
  parameter_group_name   = "default.mysql5.6"
  vpc_security_group_ids = ["${aws_security_group.allow_web_to_db.id}"]
  skip_final_snapshot    = true
}
