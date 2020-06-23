provider "aws" {
  region = "us-east-1"
}

terraform {
    backend "s3" {
        bucket = "handled-by-pipline"
        key = "terraform.tfstate"
        region = "us-east-1"
        dynamodb_table = "handled-by-pipline"
    }
}

resource "aws_instance" "remote"{
    ami = "ami-09d95fab7fff3776c"
    instance_type = "t2.micro"

    tags = {
        Name = "vMadBro-Server1"
    }
}
