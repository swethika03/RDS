#provider
provider "aws" {
    region ="us-east-1"  
}
Creating RDS instance
resource "aws_db_instance" "RDS_DB" {
  identifier           = "database-1"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"  
  username             = "admin"
  password             = "admin_123"
  allocated_storage    = 20
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  db_name = "multi_db"
  }
  
