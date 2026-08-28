# Nischoy Topo development Homebrew tap

This public tap hosts explicitly development-only builds of
[Nischoy Topo](https://github.com/Nischoy-ai/topo). It is intended for manual
interoperability testing before Topo's protected, signed package channel is
provisioned.

## Install

```sh
brew install nischoy-ai/topo-dev/topo-mid
topo version
```

Upgrade or remove the development build with:

```sh
brew upgrade nischoy-ai/topo-dev/topo-mid
brew uninstall topo-mid
```

The formula is named `topo-mid`, but it installs the executable as `topo`.
It conflicts with a future stable `topo` formula so the development and
production executables cannot silently shadow one another.

## Current development build

- Version: `v0.0.0-mid.1`
- Topo source commit:
  [`32733488a704114e3a805c6313aae4257cade7d4`](https://github.com/Nischoy-ai/topo/commit/32733488a704114e3a805c6313aae4257cade7d4)
- Source pull request:
  [Nischoy-ai/topo#48](https://github.com/Nischoy-ai/topo/pull/48)
- Toolchain: exact Go `1.25.13`, CGO disabled
- Build: reproduced byte-for-byte from two separate source paths before
  publication

## Security and support boundary

These are not production release artifacts. They have no Apple Developer ID
signature, notarization ticket, Sigstore bundle, GitHub build provenance, SBOM,
or package-channel promotion evidence. The macOS linker supplies only an
ad-hoc signature with no team identity. GitHub Release asset immutability and
the formula's SHA-256 checks detect accidental or post-formula byte changes;
they do not establish the protected production-release trust chain.

Do not use this tap for production deployments. The future official channel
remains `Nischoy-ai/homebrew-tap` and will be published only through Topo's
protected signing and promotion workflows.
