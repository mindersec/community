# Minder Contribution and Maintainership

We welcome additional contributors to Minder, including maintainers. Minder
currently has a three-tier contributor structure:

| Role        | Description                                                                      | Privileges                          |
| ----------- | -------------------------------------------------------------------------------- | ----------------------------------- |
| Contributor | Anyone who participates in the project!                                          | Send / update PRs                   |
| Org Member  | Particpates in the project with non-code contributions, such as issue management | Manage issues                       |
| Maintainer  | Consistent contributors who have shown commitment to the project                 | Review and merge PRs, manage issues |

## Contributors

See [CONTRIBUTING.md](./CONTRIBUTING.md) for a desrciption of how to get started
contributing to Minder.

## Requirements for Becoming an Org Member

To become an org member, you must meet the following criteria:

1. **Account Security**

   - Must have enabled
     [two factor authentication](https://docs.github.com/en/authentication/securing-your-account-with-two-factor-authentication-2fa/about-two-factor-authentication)
     on their GitHub account

1. **Demonstrated Contribution**:

   - Have participated meaningfully in resolving multiple issues in the
     `mindersec` organization.

Candidates who have met these criteria may request membership in the GitHub
organization by updating the [terraform configuration](./config/users.tf). These
PRs must be reviewed by a Maintainer, and are subject to review by the
Maintainers / Steering Committee.

## Requirements for Becoming a Maintainer

To become a maintainer, you must meet the following criteria:

1. **Account Security**

   - Must have enabled
     [two factor authentication](https://docs.github.com/en/authentication/securing-your-account-with-two-factor-authentication-2fa/about-two-factor-authentication)
     on their GitHub account

1. **Demonstrated Contribution**:

   - Have made multiple significant contributions to Minder's GitHub
     repositories. This can include:
     - PR contributions to at least one Minder subystem
     - PR reviews of at least one Minder subsystem
     - Documentation and issue triage

1. **Sponsorship**:

   - Sponsored by at least one existing maintainer.

Candidates who have met these criteria must be approved by a majority of the
current Maintainers, [as documented in the Charter](./GOVERNANCE.md).

## Responsibilities of a Maintainer

As a maintainer, you will have the following responsibilities:

1. **Code Review and Merging**:

   - Review pull requests for quality, correctness, and alignment with the
     project direction.
     - When in doubt, assign pull requests to subject matter experts in the
       relevant subsystem.
   - Merge reviewed pull requests when satisfactory.

1. **Set Technical Direction**:

   - Where appropriate, participate in authoring and reviewing technical design
     documents.
     - Note: many project documents are currently in the Stacklok Google Drive
       instance. We are working to open the relevant documents for community
       review and feedback.

## Maintainers List

The current list of maintainers is:

- @JAORMX (Stacklok)
- @rdimitrov (Stacklok)
- @evankanderson (Stacklok)
- @eleftherias (Stacklok)
- @blkt (Stacklok)
- @puerco (Stacklok)
- @Vyom-Yadav (Canonical)

Assignment of permissions for these maintainers is currently privately managed
by Stacklok as a matter of circumstance; changes to this list will need a
Stacker to apply some private automation to grant the privileges, until we find
a different approach (for example, donation to a foundation, which would have
their own automation).

### Emeritus Maintainers

The following maintainers contributed to the design and implementation of Minder,
but have since moved on to other projects.  We thank them for their efforts!

- @dmjb (Stacklok)
- @jhrozek (Stacklok)
- @lukehinds (Stacklok)
- @yrobla (Stacklok)