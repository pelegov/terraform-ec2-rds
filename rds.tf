resource "aws_db_instance" "AppDatabase" {
  allocated_storage      = 20
  db_name                = "appdatabase"
  engine                 = "mysql"
  engine_version         = "8.0.33"
  instance_class         = "db.t3.micro"
  username               = "username"
  password               = "password"
  publicly_accessible    = true
  db_subnet_group_name   = aws_db_subnet_group.app-db-subnet-group.name
  vpc_security_group_ids = [aws_security_group.WebTrafficSG.id]
}
