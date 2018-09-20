provider "aws" {
  // Environment variables AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY must be set.
  region = "ap-northeast-1"
}

variable "target_region" {
  default = "ap-northeast-1"
}

variable "ami_id" {
//  default = "ami-6b0d5f0d" // RHEL 7.5
   default = "ami-e99f4896" // Amazon Linux 2
}

variable "instance_type" {
  default = "t2.micro"
}

variable "env" {
  default = "natgw-work"
}
