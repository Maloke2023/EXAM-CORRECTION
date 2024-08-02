

aws_region         = "us-west-2"
log_group_name     = "example-log-group"
log_retention_days = 30
alarm_name         = "example-alarm"
evaluation_periods = 2
metric_name        = "CPUUtilization"
namespace          = "AWS/EC2"
period             = 300
threshold          = 80
alarm_description  = "This alarm monitors EC2 CPU utilization"
actions_enabled    = true
alarm_actions      = ["arn:aws:sns:us-west-2:123456789012:example-topic"]

tags = {
  Environment = "Production"
  Project     = "example"
}
