provider "aws" {
  region = var.aws_region
  profile = "malval"
}

resource "aws_cloudwatch_log_group" "db_watch" {
  name              = var.log_group_name
  retention_in_days = var.log_retention_days

  tags = var.tags
}

resource "aws_cloudwatch_metric_alarm" "db_watch" {
  alarm_name          = var.alarm_name
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = var.evaluation_periods
  metric_name         = var.metric_name
  namespace           = var.namespace
  period              = var.period
  statistic           = "Average"
  threshold           = var.threshold
  alarm_description   = var.alarm_description
  actions_enabled     = var.actions_enabled

  alarm_actions = var.alarm_actions

  tags = var.tags
}
