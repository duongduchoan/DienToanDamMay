# ============================================================
# main.tf
#
# Terraform tự động đọc tất cả file .tf trong cùng thư mục.
# Các tài nguyên đã được tách theo chức năng để dễ trình bày:
# - network.tf      : VPC, Subnet, Internet Gateway, Route Table
# - security.tf     : Security Groups cho ALB, EC2, RDS
# - iam.tf          : IAM Role và Instance Profile cho EC2
# - database.tf     : RDS SQL Server
# - compute.tf      : EC2 gốc và AMI Windows
# - loadbalancer.tf : ALB, Target Group, Listener, Sticky Session
# - autoscaling.tf  : Launch Template và Auto Scaling Group
#
# Lưu ý: Không đổi tên resource để tránh Terraform tạo lại hạ tầng.
# ============================================================
