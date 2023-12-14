# Dev Container Features

## Contents

This repository contains following features:
- [ansible-lint](./src/ansible-line/README.md): Ansible Lint
- [pyadr](./src/pyadr/README.md): Python ADR
- [pytest](./src/pytest/README.md): Pytest
- [sshpass](./src/sshpass/README.md): SSH Pass for Ansible

This repository contains a _collection_ of two Features - `hello` and `color`. These Features serve as simple feature implementations.  Each sub-section below shows a sample `devcontainer.json` alongside example usage of the Feature.

## Usage

To use the features from this repository, add the desired features to `devcontainer.json.`

This example use google-cloud-cli feature on devcontainer.

```jsonc
{
  "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
  "features": {
    "ghcr.io/hspaans/devcontainer-features/ansible-lint:1": {}
  }
}
```

## Repo and Feature Structure

Similar to the [`devcontainers/features`](https://github.com/devcontainers/features) repo, this repository has a `src` folder.  Each Feature has its own sub-folder, containing at least a `devcontainer-feature.json` and an entrypoint script `install.sh`.

```
├── src
│   ├── ansible-lint
│   │   ├── devcontainer-feature.json
│   │   └── install.sh
│   ├── pyadr
│   │   ├── devcontainer-feature.json
│   │   └── install.sh
|   └── ...
│       ├── devcontainer-feature.json
│       └── install.sh
|   ...
├── test
│   ├── ansible-lint
│   │   ├── scenarios.json
│   │   └── test.sh
│   ├── pyadr
│   │   ├── scenarios.json
│   │   └── test.sh
|   └── ...
│       ├── scenarios.json
│       └── test.sh
...
```

An [implementing tool](https://containers.dev/supporting#tools) will composite [the documented dev container properties](https://containers.dev/implementors/features/#devcontainer-feature-json-properties) from the feature's `devcontainer-feature.json` file, and execute in the `install.sh` entrypoint script in the container during build time.  Implementing tools are also free to process attributes under the `customizations` property as desired.
