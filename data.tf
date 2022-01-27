data "aws_region" "current" {}

data "aws_lb" "passed_on" {
    arn = var.aws_lb_arn
}
