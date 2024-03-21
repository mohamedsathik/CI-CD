variable "aws_instance" {
  description = "Instance of EC2"
  type        = string
  default     = "t2.micro"

}

variable "instance_count" {
  description = "Instance Count"
  type        = number
  default     = 1
}

variable "ip_address" {
  description = "Allocate an IP address"
  default     = true
  type        = bool

}

