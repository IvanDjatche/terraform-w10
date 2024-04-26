
terraform {
  backend "s3" {
    bucket         = "ivan-sk-bucket"
    key            = "week10/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"

  }
}
