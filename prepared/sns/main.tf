# main.tf

resource "aws_sns_topic" "my_topic" {
  name = var.topic_name
  tags = var.tags
}

resource "aws_sns_topic_subscription" "email_subscription" {
  count     = length(var.email_subscriptions)
  topic_arn = aws_sns_topic.my_topic.arn
  protocol  = "email"
  endpoint  = var.email_subscriptions[count.index]
}
