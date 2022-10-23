variable "aws-region" {
    type = string
    description = "AWS region"
    sensitive = false
    default = "us-east-1"
  
}

variable "vpc_cidr_block" {
  type=string
  default          = "10.0.0.0/16"
  description =    "vpc cidr block"
}

variable "vpc_subnet_cidr_block" {
  type = list(string)
  default =["10.0.0.0/24", "10.0.1.0/24"]
  description =     "CIDR block for subnet in VPC"
}


variable "enable_dns_hostnames" {
    type=bool
    default = true
  
}



variable "company" {
  type        = string
  description = "Company name for resource tagging"
  default     = "Globomantics"
}

variable "project" {
  type        = string
  description = "Project name for resource tagging"
  default= "globo-web-app"
}

variable "billing_code" {
  type        = string
  description = "Billing code for resource tagging"
  default= "ACCT8675309"
}

variable "instance_type" {
    type = string
    default =  "t2.micro" 
  
}