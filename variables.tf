variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-southeast-2"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "qlsv"
}

variable "my_ip" {
  description = "Your public IP for RDP access"
  type        = string
}

variable "db_name" {
  description = "Database name"
  type        = string
  default     = "QLSV1"
}

variable "db_username" {
  description = "RDS SQL Server username"
  type        = string
  default     = "adminuser"
}

variable "db_password" {
  description = "RDS SQL Server password"
  type        = string
  sensitive   = true
}

variable "key_pair_name" {
  description = "EC2 key pair name"
  type        = string
}
variable "web_ami_id" {
  description = "AMI ID created from configured web EC2"
  type        = string
}