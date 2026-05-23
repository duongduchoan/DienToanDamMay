# Đồ án Điện toán đám mây - Triển khai Web QLSV trên AWS

## Thành viên
- Hoàn
- Khanh
- Bình

## Công nghệ sử dụng
- ASP.NET Core .NET 8
- SQL Server
- AWS EC2 Windows Server
- Amazon RDS SQL Server
- Application Load Balancer
- Auto Scaling Group
- Terraform
- IAM

## Kiến trúc
User → Application Load Balancer → Auto Scaling Group gồm 2 EC2 Windows → Amazon RDS SQL Server

## Chức năng
- Đăng nhập theo vai trò
- Quản lý sinh viên
- Quản lý giảng viên
- Quản lý lớp, ngành, viện
- Quản lý điểm

## Triển khai Terraform
```powershell
terraform init
terraform validate
terraform plan
terraform apply