data "aws_ami" "amazon-linux-2" {
  most_recent = true

  filter {
    name   = "name"
    values = ["al2023-ami-2023.3*"]
  }

  filter {
    name   = "owner=alias"
    values = ["amazon"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "myinstance_mumbai" {
  ami           = data.aws_ami.amazon-linux-2.id
  instance_type = var.instance_type
  count         = var.instance_count

  tags = {
    names       = "myinstances"
    Environment = "Prod"
    Team        = "App-infra"
    region      = "mumbai"
  }
}


resource "aws_instance" "myinstance_hyd" {
  ami           = data.aws_ami.amazon-linux-2.id
  instance_type = var.instance_type
  count         = var.instance_count
  provider      = aws.hyd

  tags = {
    names       = "myinstances"
    Environment = "Prod"
    Team        = "App-infra"
    region      = "hyd"
  }
}


resource "aws_s3_bucket" "mybuket" {
  bucket = var.bucket_name

  tags = {
    Name        = "my bucket"
    Environment = "Dev"
  }
}


resource "aws_vpc" "my_vpcmain" {
  cidr_block = var.network_range
}