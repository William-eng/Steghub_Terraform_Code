variable "region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "vpcp_cidr" {
  default = "10.1.0.0/16"
}
variable "enable_dns_support" {
  default = "true"
}
variable "enable_dns_hostnames" {
  default = "true"
}


variable "enable_classiclink" {
  default = "false"
}
variable "enable_classiclink_dns_support" {
  default = "false"
}

variable "preferred_number_of_public_subnets" {
  default = 2
}

variable "preferred_number_of_private_subnets" {
  default = 4
}

variable "tags" {
  description = "A mapping of tags to assign to all resources."
  type        = map(string)
  default     = {}
}

variable "name" {
  description = "Base name to use for naming the subnets"
  type        = string
  default     = "Ktrontech"
}
variable "environment" {
  description = "Environment in which the resource is deployed (e.g., dev, staging, prod)"
  type        = string
  default     = "production"
}

variable "owner_email" {
  description = "Email of the resource owner"
  type        = string
  default     = "kelubaba307@gmail"
}

variable "managed_by" {
  description = "Tool managing the resource"
  type        = string
  default     = "Terah"
}

variable "billing_account" {
  description = "Billing account associated with the resource"
  type        = string
  default     = "1234567890"
}



variable "ami" {
  type        = string
  description = "AMI ID for the launch template"
}


variable "keypair" {
  type        = string
  description = "key pair for the instances"
}

variable "account_no" {
  type        = number
  description = "the account number"
}


variable "master-username" {
  type        = string
  description = "RDS admin username"
}

variable "master-password" {
  type        = string
  description = "RDS master password"
}