variable "cluster_name" {
  description = "Name of the ECS cluster"
  type        = string
}

variable "task_family_name" {
  description = "Name of the ECS task family"
  type        = string
}

variable "task_cpu" {
  description = "The amount of CPU to allocate for the task"
  type        = string
  default     = "256"
}

variable "task_memory" {
  description = "The amount of memory to allocate for the task"
  type        = string
  default     = "512"
}

variable "execution_role_arn" {
  description = "ARN of the execution role for ECS"
  type        = string
}

variable "container_name" {
  description = "Name of the container"
  type        = string
}

variable "container_image" {
  description = "Docker image for the container"
  type        = string
}

variable "container_port" {
  description = "Port on which the container is listening"
  type        = number
  default     = 80
}

variable "service_name" {
  description = "Name of the ECS service"
  type        = string
}

variable "subnets" {
  description = "List of subnets for the ECS service"
  type        = list(string)
}

variable "desired_count" {
  description = "The desired number of instantiations of the task definition to keep running on the service"
  type        = number
  default     = 1
}

variable "aws_region" {
  description = "The AWS region"
  type        = string
  default     = "us-west-1"
}

variable "vpc_id" {
  description = "The VPC ID where the ECS service and related resources are created"
  type        = string
}

variable "target_group_arn" {
  description = "ARN of the target group for the load balancer"
  type        = string
}

variable "max_capacity" {
  description = "The maximum number of tasks for service auto-scaling"
  type        = number
  default     = 5
}

variable "min_capacity" {
  description = "The minimum number of tasks for service auto-scaling"
  type        = number
  default     = 1
}