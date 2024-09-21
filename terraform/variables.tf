#
# Region
# 
variable "region" {}

#
# Service name
# 
variable "service_name" {}

#
# Cluster name
# 
variable "cluster_name" {}

#
# Service port
# 
variable "service_port" {}

#
# Service cpu
# 
variable "service_cpu" {}

#
# Service memory
# 
variable "service_memory" {}

#
# From SSM
#
variable "ssm_listener" {}
variable "ssm_vpc_id" {}
variable "ssm_private_subnet_1" {}
variable "ssm_private_subnet_2" {}
variable "ssm_private_subnet_3" {}
variable "ssm_alb" {}

#
# Environment
#
variable "environment_variables" {}

#
# Capabilities
#
variable "capabilities" {}

#
# Service healthcheck
#
variable "service_healthcheck" {}

#
# Service launch type
#
variable "service_launch_type" {
  type = list(object({
    capacity_provider = string
    weight            = number
  }))
}

#
# Service task count
#
variable "service_task_count" {}

#
# Service ingress ports
#
variable "service_sg_ingress_ports" {}

#
# Service hosts
#
variable "service_hosts" {}


variable "scale_type" {}

variable "task_minimum" {}

variable "task_maximum" {}

#
# Task Auto Scaling CPU
#
variable "scale_out_cpu_threshold" {}

variable "scale_out_adjustment" {}

variable "scale_out_comparison_operator" {}

variable "scale_out_statistic" {}

variable "scale_out_period" {}

variable "scale_out_evaluation_periods" {}

variable "scale_out_cooldown" {}

variable "scale_in_cpu_threshold" {}

variable "scale_in_adjustment" {}

variable "scale_in_comparison_operator" {}

variable "scale_in_statistic" {}

variable "scale_in_period" {}

variable "scale_in_evaluation_periods" {}

variable "scale_in_cooldown" {}

#
# Task Auto Scaling tracking
#
variable "scale_tracking_cpu" {}

variable "scale_tracking_requests" {}