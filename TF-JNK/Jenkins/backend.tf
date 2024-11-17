terraform {
  backend "s3" {
    bucket = "cicd-7730"
    key    = "eks/terraform.tfstate"
    region = "us-east-1"
    profile = "vscode"
  }
}