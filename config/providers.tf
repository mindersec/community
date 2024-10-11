terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.2.3"
    }

    # N.B. we don't have a solution for state storage yet.
  }
}

provider "github" {
  owner = "mindersec"
}
