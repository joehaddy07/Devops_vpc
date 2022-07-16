variable "vpc-cidr" {
  type        = string
  description = "VPC CIDR Block"
  default     = "10.0.0.0/16"
}

variable "public_subnet_1_cidr" {
  type        = string
  description = "public subnet 1 cidr"
  default     = "10.0.0.0/24"
}

variable "public_subnet_2_cidr" {
  type        = string
  description = "public subnet 2 cidr"
  default     = "10.0.1.0/24"
}

variable "private_subnet_1_cidr" {
  type        = string
  description = "private subnet 1 cidr"
  default     = "10.0.2.0/24"
}

variable "private_subnet_2_cidr" {
  type        = string
  description = "private subnet 2 cidr"
  default     = "10.0.3.0/24"
}

variable "private_subnet_3_cidr" {
  type        = string
  description = "private subnet 3 cidr"
  default     = "10.0.4.0/24"
}

variable "private_subnet_4_cidr" {
  type        = string
  description = "private subnet 4 cidr"
  default     = "10.0.5.0/24"
}