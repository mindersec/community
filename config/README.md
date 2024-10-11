# Terraform Provisioning of Users

We are using Terraform (with a GitHub App) to provision users and teams in the
`mindersec` organization. We do this for a few reasons:

1. It makes the configuration and membership in the organization transparent.
1. It allows code review for changes (granting permissions /
   [promoting to Maintainer](../MAINTAINERS.md))
1. It allows us to reduce the number of users with "admin" permissions on the
   organization.
