iam.tf				terraform-helloapp
main.tf				terraform.tfstate
sgs.tf				terraform.tfstate.backup
terraform-ecs
Suraj@macs-mbp-7 terraform1 % cd terraform-helloapp 
Suraj@macs-mbp-7 terraform-helloapp % cat asg.tf 
resource "aws_autoscaling_group" "default" {
  name                      = "terraform-ecs-nginx"
  max_size                  = 1
  min_size                  = 1
  health_check_grace_period = 300
  health_check_type         = "ELB"
  desired_capacity          = 1
  force_delete              = true
  launch_configuration      = "${aws_launch_configuration.default.name}"
  vpc_zone_identifier       = ["subnet-122b865f", "subnet-799f8125"]
  target_group_arns         = ["${aws_lb_target_group.default.arn}"]
}

