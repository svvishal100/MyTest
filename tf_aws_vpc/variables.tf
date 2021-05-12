variable "aws_access_key" {}

variable "aws_secret_key" {}

variable "region" {}

variable "name" {} 

variable "instance_name" 
{
  default = {
    "0" = "Confluence"
    "1" = "Jira Server"
    "2" = "Git Server"
	"3" = "Jenkins"
	"4" = "Sonar"
	"5" = "Artifactory"
	"6" = "Selenium"
	"7" = "App Server"
  }
} 

variable "cidr" {}

variable "public_subnets" {
  description = "A list of public subnets inside the VPC."
  default     = []
}

variable "private_subnets" {
  description = "A list of private subnets inside the VPC."
  default     = []
}

variable "azs" {
  description = "A list of Availability zones in the region"
  default     = []
}

variable "enable_dns_hostnames" {
  description = "should be true if you want to use private DNS within the VPC"
  default     = false
}

variable "enable_dns_support" {
  description = "should be true if you want to use private DNS within the VPC"
  default     = false
}

variable "enable_nat_gateway" {
  description = "should be true if you want to provision NAT Gateways for each of your private networks"
  default     = false
}

variable "map_public_ip_on_launch" {
  description = "should be false if you do not want to auto-assign public IP on launch"
  default     = true
}

variable "private_propagating_vgws" {
  description = "A list of VGWs the private route table should propagate."
  default     = []
}

variable "public_propagating_vgws" {
  description = "A list of VGWs the public route table should propagate."
  default     = []
}

variable "tags" {
  description = "A map of tags to add to all resources"
  default     = {}
}

variable "adname" {}

variable "adpassword" {}

variable "adtype" {}

variable "alias" {}


variable "key_name" {
    description = "Name of the SSH keypair to use in AWS."
}

variable "key_path" {
    description = "Path to the private portion of the SSH key specified."
}

variable "aws_region" {
    description = "AWS region to launch servers."
}

variable "instance_type" {
    description = "Instance type"
}