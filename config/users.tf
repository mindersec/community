locals {
  maintainers = {
    JAORMX        = { role : "admin" }
    jhrozek       = { role : "member" }
    rdimitrov     = { role : "member" }
    dmjb          = { role : "member" }
    evankanderson = { role : "admin" }
    eleftherias   = { role : "member" }
    yrobla        = { role : "member" }
    lukehinds     = { role : "admin" }
    blkt          = { role : "member" }
    puerco        = { role : "member" }
    Vyom-Yadav    = { role : "member" }

    thelinuxfoundation = { role : "admin" }
  }
}

resource "github_membership" "maintainers" {
  for_each = local.maintainers

  username = each.key
  role     = each.value.role
}

import {
  to = github_membership.maintainers["evankanderson"]
  id = "mindersec:evankanderson"
}
import {
  to = github_membership.maintainers["JAORMX"]
  id = "mindersec:JAORMX"
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
