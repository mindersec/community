locals {
  maintainers = {
    dakshhhhh16      = { role : "member" }
    evankanderson    = { role : "admin" }
    intelligent-ears = { role : "member" }
    JAORMX           = { role : "admin" }
    krrish175-byte   = { role : "member" }
    shreyaabaranwal  = { role : "member" }
    rdimitrov        = { role : "admin" }
    Vyom-Yadav       = { role : "member" }

    thelinuxfoundation = { role : "admin" }
  }

  org_members = {
    codejasleen      = {}
    DharunMR         = {}
    drona-gyawali    = {}
    Gitjay11         = {}
    intelligent-ears = {}
    Jaydeep869       = {}
    kazuhidelee      = {}
    ravindra-RKB     = {}
    sachin9058       = {}
    staceypotter     = {}
    sourya2704       = {}
    dmjb             = {}
    blkt             = {}
  }
}

resource "github_membership" "maintainers" {
  for_each = local.maintainers

  username = each.key
  role     = each.value.role
}

resource "github_membership" "org_members" {
  for_each = local.org_members

  username = each.key
  role     = "member"
}

resource "github_team" "maintainers" {
  name        = "maintainers"
  description = "MinderSec maintainers"
  // Either "secret" (can't be nested, others can't see it)
  // or "closed" (visible within the org)
  privacy = "closed"
}

resource "github_team_members" "maintainers" {
  team_id = github_team.maintainers.id

  dynamic "members" {
    for_each = local.maintainers

    content {
      username = members.key
      # Admins will always be listed as "maintainers" by the GitHub API.
      role = replace(local.maintainers[members.key].role, "admin", "maintainer")
    }
  }
}

// Import the team, because it didn't get stored in terraform state.
import {
  to = github_team.maintainers
  id = "maintainers"
}
