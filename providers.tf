# Provider por defecto: Europa (Ireland)

provider "aws" {
  region = "eu-west-1"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
      Lab       = "cap06"
    }
  }
}

# Provider alternativo: US East (Virginia)
provider "aws" {
  alias  = "virginia"
  region = "us-east-1"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
      Lab       = "cap06"
    }
  }
}