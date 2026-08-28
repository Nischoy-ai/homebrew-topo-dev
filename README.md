# Nischoy Topo development Homebrew tap

This public tap hosts explicitly development-only builds of
[Nischoy Topo](https://github.com/Nischoy-ai/topo). It is intended for manual
interoperability testing before Topo's protected, signed package channel is
provisioned.

## Install

```sh
brew install nischoy-ai/topo-dev/topo
topo version
```

Upgrade or remove the development build with:

```sh
brew upgrade nischoy-ai/topo-dev/topo
brew uninstall topo
```

The formula and executable are both named `topo`. Install only one Topo
formula at a time.

## Current development build

- Version: `v0.0.0-dev.2`
- Topo source commit:
  [`97f783ce83c7462f8ef999a453262f8107a9494f`](https://github.com/Nischoy-ai/topo/commit/97f783ce83c7462f8ef999a453262f8107a9494f)
- Source pull request:
  [Nischoy-ai/topo#49](https://github.com/Nischoy-ai/topo/pull/49)
- Toolchain: exact Go `1.25.13`, CGO disabled
- Build: reproduced byte-for-byte from two separate source paths before
  publication
- Security gate: `golang.org/x/crypto` v0.55.0; zero reachable
  vulnerabilities with govulncheck v1.7.0. The withdrawn `v0.0.0-dev.1`
  build used v0.54.0, which the gate began rejecting as reachable
  `GO-2026-6303` on 2026-08-28.

## Security and support boundary

These are not production release artifacts. They have no Apple Developer ID
signature, notarization ticket, Sigstore bundle, GitHub build provenance, SBOM,
or package-channel promotion evidence. The macOS linker supplies only an
ad-hoc signature with no team identity. The versioned release URLs and
formula-pinned SHA-256 checks detect accidental or post-formula byte changes;
they do not make the GitHub Release immutable or establish the protected
production-release trust chain.

Do not use this tap for production deployments. The future official channel
remains `Nischoy-ai/homebrew-tap` and will be published only through Topo's
protected signing and promotion workflows.
