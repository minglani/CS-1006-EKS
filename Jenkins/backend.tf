terraform {
  backend "s3" {
    bucket  = "cicd-7730"
    key     = "jenkins/terraform.tfstate"
    region  = "us-east-1"
  }
}