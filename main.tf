module "vpc" {
  source = "./tf_aws_vpc"
  aws_access_key = ""
  aws_secret_key = ""
  region = "us-east-1"
  name = "vpc-dev-cicd-0001"
  key_path = "./"
  instance_type = "t2.micro"
  key_name = "ec2Instance"
  aws_region = "us-east-1"


  cidr = "10.0.0.0/16"
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]

  enable_nat_gateway = "true"
  enable_dns_hostnames = "true"
  enable_dns_support = "true"

  azs      = ["us-east-1a", "us-east-1b"]

  tags {
    "Terraform" = "true"
  }
  adtype = "MicrosoftAD"
  adname = "adfs.vishal.com"
  alias  = "vishal"
  adpassword = "lkdjf#@K23"
}

module "volume_admin_role" {

  source = "./tf_aws_role"
  aws_access_key = ""
  aws_secret_key = ""
  region = "us-east-1"
  rolename = "VolumeManagerRole1"
  service = "ds.amazonaws.com"
  actions = "ec2:DescribeVolume,ec2:AttachVolume,ec2:DetachVolume,ec2:CreateVolume/ec2:DeleteVolume,ec2:ModifyVolumeAttribute"
  effects = "Allow,Deny"
  resources = "*,*,"
}

