provider "aws" {
  region = var.region

  default_tags {
    tags = merge(
      var.additional_tags,
      {
        Terraform   = "true"
        Resource-Prefix = var.resource_prefix
      }
    )
  }
}

