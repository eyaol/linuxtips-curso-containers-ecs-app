#
# Region
# 
region = "us-east-1"

#
# Cluster name
# 
cluster_name = "linuxtips-ecs-cluster"

#
# Service
# 
service_name             = "chip"
service_port             = 8080
service_cpu              = 256
service_memory           = 512
service_launch_type      = "EC2"
service_task_count       = 3
service_sg_ingress_ports = ["8080"]
service_hosts            = ["chip.linuxtips.demo"]

#
# SSM values
# 
ssm_listener = "/linuxtips/ecs/lb/listener/arn"
ssm_vpc_id   = "/linuxtips-vpc/vpc/vpc_id"

#
# Private subnets
# 
ssm_private_subnet_1 = "/linuxtips-vpc/vpc/linuxtips-vpc-private-subnet-1a"
ssm_private_subnet_2 = "/linuxtips-vpc/vpc/linuxtips-vpc-private-subnet-1b"
ssm_private_subnet_3 = "/linuxtips-vpc/vpc/linuxtips-vpc-private-subnet-1c"

environment_variables = [
  {
    name  = "FOO",
    value = "BAR"
  },
  {
    name  = "PING",
    value = "PONG"
  }
]

capabilities = ["EC2"]

service_healthcheck = {
  healthy_threshold   = 3
  unhealthy_threshold = 10
  timeout             = 10
  interval            = 60
  matcher             = "200-399"
  path                = "/healthcheck"
  port                = 8080
}

scale_type   = "requests_tracking"
task_minimum  = 3
task_maximum = 12

scale_out_cpu_threshold       = 50
scale_out_adjustment          = 2
scale_out_comparison_operator = "GreaterThanEqualToThreshold"
scale_out_statistic           = "Average"
scale_out_period              = 60
scale_out_evaluation_periods  = 2
scale_out_cooldown            = 60

scale_in_cpu_threshold       = 30
scale_in_adjustment          = -1
scale_in_comparison_operator = "LessThanOrEqualToThreshold"
scale_in_statistic           = "Average"
scale_in_period              = 60
scale_in_evaluation_periods  = 2
scale_in_cooldown            = 60

scale_tracking_cpu      = 50
scale_tracking_requests = 20

ssm_alb = "/linuxtips/ecs/lb/arn"
