remote_state {
  backend = "s3"
  config = {
    bucket         = "ltxi-terraform-state-poc"
    key            = "us-east-1/dev/compute/terraform.tfstate"
    region         = "us-east-1"
  }
}
terraform {
  source = "../..//stack/"
}
