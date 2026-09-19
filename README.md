# Rul1an/homebrew-tap

Homebrew formulae for [Assay](https://github.com/Rul1an/assay), a policy-as-code gate for MCP agent tool calls with verifiable evidence.

```sh
brew install Rul1an/tap/assay
assay --version
```

The formula installs the prebuilt `assay` binary from the matching [GitHub release](https://github.com/Rul1an/assay/releases) for macOS (Apple silicon and Intel) and Linux (x86_64 and arm64). Each archive is pinned by the sha256 published with that release. Homebrew verifies the download against that pin.

The release archives also carry GitHub build-provenance attestations. To check one yourself:

```sh
gh attestation verify assay-v<version>-<target>.tar.gz -R Rul1an/assay
```

This tap is not `homebrew-core`: it does not build from source. Report problems in the [Assay repository](https://github.com/Rul1an/assay/issues).
