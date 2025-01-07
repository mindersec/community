# What is Minder?

Minder is an OpenSSF platform that helps development teams and open source
communities build more secure software, and prove to others that what they’ve
built is secure. As a platform, Minder enables project owners to define and
enforce their own security policies, enabling both detection and remediation of
supply chain elements which violate policy.

Minder is designed as a multi-tenant platform, where each project is isolated
from other projects on the service. Within a project, Minder supports granting
permissions to multiple users, and allowing those users to instantiate
_providers_ with credentials to manage supply chain _entities_ such as
repositories, artifacts, and pull requests. Minder _profiles_ encapsulate a set
of rules which apply to one or more entity types to enforce supply chain policy.

Minder can be deployed as a Helm chart and provides a CLI tool `minder`.
Stacklok, also provides a free-for-public-repositories hosted version of Minder
(at https://api.stacklok.com/). Minder is designed to be extensible, allowing
users to integrate with their existing tooling and processes.

## Features

- **Repo configuration and security:** Simplify configuration and management of
  security settings and policies across repos.
- **Proactive security enforcement:** Continuously enforce best practice
  security configurations by setting granular policies to alert only or
  auto-remediate.
- **Artifact attestation:** Continuously verify that packages are signed to
  ensure they’re tamper-proof, using the open source project Sigstore.
- **Dependency management:** Manage dependency security posture by helping
  developers make better choices and enforcing controls. Minder is integrated
  with [Trusty by Stacklok](https://trustypkg.dev) to enable policy-driven
  dependency management based on the risk level of dependencies.

# Roadmap

The Minder community are actively working on new features and improvements for
Minder.

You can find our roadmap [here](https://minder-docs.stacklok.dev/about/roadmap).

Should you wish to request or contribute a feature or improvement, please use
the following
[issue template](https://github.com/stacklok/minder/issues/new?template=enhancement.yml)

## Contributing

We welcome contributions to Minder. Please see our
[Contributing](https://github.com/mindersec/minder/blob/main/CONTRIBUTING.md) guide for more information. Contributors who
participate frequently in pull requests should read the
[Maintainers](./MAINTAINERS.md) document for the process and expectations of
acquiring Maintainer permissions.
