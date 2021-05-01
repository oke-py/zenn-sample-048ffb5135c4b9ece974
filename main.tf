terraform {
  required_version = ">= 0.13.0"
}

module "virginia" {
  source = "./modules/guardduty"
  providers = {
    aws = aws.us-east-1
  }
}

module "tokyo" {
  source = "./modules/guardduty"
  providers = {
    aws = aws.ap-northeast-1
  }
}
