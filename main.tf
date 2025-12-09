terraform {
  required_version = "~> 1.14.0"

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.7"
    }
  }
}

provider "random" {}

resource "random_pet" "example" {
  length = 2
}

output "pet_name" {
  value = random_pet.example.id
}
