# This file was split from main.tf for cleaner Terraform organization.

# 07. High Availability: Launch Template and Auto Scaling Group
# ============================================================

resource "aws_launch_template" "web" {
  name_prefix   = "${var.project_name}-web-lt-"
  image_id      = var.web_ami_id
  instance_type = "t3.micro"
  key_name      = var.key_pair_name

  vpc_security_group_ids = [
    aws_security_group.ec2_sg.id
  ]

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = "${var.project_name}-asg-web"
    }
  }

  iam_instance_profile {
    name = aws_iam_instance_profile.ec2_profile.name
  }
}

resource "aws_autoscaling_group" "web" {
  name             = "${var.project_name}-web-asg"
  min_size         = 2
  max_size         = 3
  desired_capacity = 2

  vpc_zone_identifier = [
    aws_subnet.public_a.id,
    aws_subnet.public_b.id
  ]

  target_group_arns = [
    aws_lb_target_group.web.arn
  ]

  health_check_type         = "ELB"
  health_check_grace_period = 300

  launch_template {
    id      = aws_launch_template.web.id
    version = "$Latest"
  }

  tag {
    key                 = "Name"
    value               = "${var.project_name}-asg-web"
    propagate_at_launch = true
  }
}
