# ---------------------------------------------------------------------------------------------------------------------
# VARIABLES
# ---------------------------------------------------------------------------------------------------------------------

variable "aws_region" {
  description = "The AWS region to create things in."
  //default     = "us-east-2"
}

variable "aws_profile" {
  description = "AWS profile"
}

variable "stack" {
  description = "Name of the stack."
}

variable "vpc_cidr" {
  description = "CIDR for the VPC"
  default     = "172.17.0.0/16"
}

variable "az_count" {
  description = "Number of AZs to cover in a given AWS region"
  default     = "2"
}

variable "aws_ecr" {
  description = "AWS ECR "
}

variable "family" {
  description = "Family of the Task Definition"
  default     = "sarwa-server"
}

variable "container_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 8000
}

variable "task_count" {
  description = "Number of ECS tasks to run"
  default     = 2
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "512"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "1024"
}

variable "fargate-task-service-role" {
  description = "Name of the stack."
}


variable "cw_log_group" {
  description = "CloudWatch Log Group"
  default     = "sarwa-log-group"
}

variable "cw_log_stream" {
  description = "CloudWatch Log Stream"
  default     = "fargate"
}

# Source repo name and branch

variable "source_repo_name" {
  description = "Source repo name"
  type        = string
}

variable "source_org_name" {
  description = "Source org name"
  type        = string
}

variable "source_repo_branch" {
  description = "Source repo branch"
  type        = string
}


# Image repo name for ECR

variable "image_repo_name" {
  description = "Image repo name"
  type        = string
}

