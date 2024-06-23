provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "iot_bucket" {
  bucket = "iot-analytics-bucket"
}

resource "aws_dynamodb_table" "iot_devices" {
  name           = "IoTDevices"
  hash_key       = "DeviceID"
  billing_mode   = "PAY_PER_REQUEST"

  attribute {
    name = "DeviceID"
    type = "S"
  }
}

resource "aws_eks_cluster" "iot_cluster" {
  name     = "iot-analytics-cluster"
  role_arn = aws_iam_role.eks_role.arn

  vpc_config {
    subnet_ids = aws_subnet.public.*.id
  }
}

