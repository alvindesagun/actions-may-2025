provider aws {
    region = "us-east-2"
}

resource aws_instance web {
    ami           = "ami-08ca1d1e465fbfe0c"
    instance_type = "t3.micro"
}

terraform {
  backend "s3" {
    bucket = "kaizen-alvind"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
