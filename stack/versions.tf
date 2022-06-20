terraform {
  required_version = ">= 0.14"
  required_providers {
    null     = "~> 2.1"
    random   = "~> 2.2"
    template = "~> 2.1"
    aws = {
      version = ">= 3.7.0"
      source  = "hashicorp/aws"
    }
  }
}
