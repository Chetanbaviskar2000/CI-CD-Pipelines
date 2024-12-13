provider "aws" {
  region     = "us-east-1" # Change to your preferred region
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}

variable "AWS_ACCESS_KEY_ID" {
  description = "The AWS access key"
  type        = string
  sensitive   = true
}

variable "AWS_SECRET_ACCESS_KEY" {
  description = "The AWS secret key"
  type        = string
  sensitive   = true
}

variable "ami_id" {
  description = "The AMI ID to use for the instance"
  type        = string
  default     = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI (Free tier eligible)
}

variable "instance_type" {
  description = "The instance type to use"
  type        = string
  default     = "t2.micro" # Free tier eligible instance type
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "example-instance"
  }
}

output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.example.id
}

output "public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.example.public_ip
}

