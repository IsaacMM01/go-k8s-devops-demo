provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "my-go-app" {
    ami = "ami-04b70fa74e45c3917"
    instance_type = "t2.micro"
    tags = {
        Name = "MyGOAPP"
    }
}

resource "aws_s3_bucket" "my-go-app-logs" {
    bucket = "my-go-app-log-bucket"
}

