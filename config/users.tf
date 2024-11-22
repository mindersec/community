locals {
  maintainers = {
    JAORMX        = { role : "admin" }
    jhrozek       = { role : "member" }
    rdimitrov     = { role : "admin" }
    dmjb          = { role : "member" }
    evankanderson = { role : "admin" }
    eleftherias   = { role : "member" }
    yrobla        = { role : "member" }
    lukehinds     = { role : "admin" }
    blkt          = { role : "member" }
    puerco        = { role : "member" }
    Vyom-Yadav    = { role : "member" }
    teodor-yanev  = { role : "member" }

    thelinuxfoundation = { role : "admin" }
  }

  org_members = {
    dashtangui   = {}
    dussab       = {}
    ethomson     = {}
    mesembria    = {}
    staceypotter = {}
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

# Folks who helped with the transition need a manual import
import {
  to = github_membership.org_members["dussab"]
  id = "mindersec:dussab"
}
import {
  to = github_membership.org_members["ethomson"]
  id = "mindersec:ethomson"
}
import {
  to = github_membership.org_members["staceypotter"]
  id = "mindersec:staceypotter"
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
