terraform {
  backend "s3" {
    bucket = "terraform-suraj"
    key    = "terraform/dev/ecs-nginx"
    region = "us-east-1"
    profile = "suraj"

  }
}

