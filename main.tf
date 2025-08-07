provider aws {
    region = var.region
}

resource aws_instance web {
    ami           = var.ami_id
    instance_type = var.instance_type
}

terraform {
  backend "s3" {
    bucket = "kaizen-alvind"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
