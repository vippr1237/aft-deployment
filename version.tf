terraform {
  required_version = " ~> 1.4.5"

  backend "s3" {
    bucket         = "ct-aft-terraform-state-28092023"
    key            = "tf-aws-bootstrap/terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "ct-aft-dynamodb-table-28092023"
  }

  # required_providers {
  #   aws = {
  #     source  = "hashicorp/aws"
  #     version = "~> 4.9.0"
  #   }
  # }
}
