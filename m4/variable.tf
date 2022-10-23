variable "aws-region" {
    type = string
    description = "AWS region"
    sensitive = false
    default = "us-east-1"
  
}

variable "aws_access_key" {
    type = string
    description = "Aws access key"
    sensitive = true
  
}

variable "enable_dns_hostnames" {
    type=bool
    default = true
  
}

variable "aws_secret_key" {
    type = string
    description = "Aws secret key"
    sensitive = true
  
}

variable "company" {
  type        = string
  description = "Company name for resource tagging"
  default     = "Globomantics"
}

variable "project" {
  type        = string
  description = "Project name for resource tagging"
}

variable "billing_code" {
  type        = string
  description = "Billing code for resource tagging"
}

variable "aws_instance_type" {
    type = list(string)
    default = [ "t2.micro" ]
  
}