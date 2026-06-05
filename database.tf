# This file was split from main.tf for cleaner Terraform organization.

# 04. Database: RDS SQL Server
# ============================================================

resource "aws_db_subnet_group" "main" {
  name = "${var.project_name}-db-subnet-group"

  subnet_ids = [
    aws_subnet.private_a.id,
    aws_subnet.private_b.id
  ]

  tags = {
    Name = "${var.project_name}-db-subnet-group"
  }
}

resource "aws_db_instance" "sqlserver" {
  identifier             = "${var.project_name}-sqlserver"
  engine                 = "sqlserver-ex"
  engine_version         = "16.00"
  instance_class         = "db.t3.micro"
  allocated_storage      = 20
  storage_type           = "gp2"

  username               = var.db_username
  password               = var.db_password

  db_subnet_group_name   = aws_db_subnet_group.main.name
  vpc_security_group_ids = [aws_security_group.rds_sg.id]

  publicly_accessible    = false
  multi_az               = false
  backup_retention_period = 0

  skip_final_snapshot    = true
  deletion_protection    = false
  license_model          = "license-included"

  tags = {
    Name = "${var.project_name}-sqlserver"
  }
}



# ============================================================
