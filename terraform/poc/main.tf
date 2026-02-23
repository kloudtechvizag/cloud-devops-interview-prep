provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "my_server" {
  ami           = "ami-0c55b159cbfafe1f0" # Replace with valid AMI for your region
  instance_type = "t2.micro"

  tags = {
    Name = "DevOpsPrep-Server"
  }
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "devops-prep-bucket-${random_id.id.hex}"
}

resource "random_id" "id" {
  byte_length = 4
}
