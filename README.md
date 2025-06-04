# Dev Container Features

## Contents

This repository contains following features:

- [ansible-lint](./src/ansible-lint/README.md): Ansible Lint
- [django-upgrade](./src/django-upgrade/README.md): Django-upgrade
- [pyadr](./src/pyadr/README.md): Python ADR
- [pycqa](./src/pycqa/README.md): PyCQA tools bundle
- [pytest](./src/pytest/README.md): Pytest
- [pymarkdownlnt](./src/pymarkdownlnt/README.md): PyMarkdownLinter
- [pyupgrade](./src/pyupgrade/README.md): Pyupgrade
- [rstcheck](./src/rstcheck/README.md): rstcheck
- [sshpass](./src/sshpass/README.md): SSH Pass for Ansible

## Usage

To use the features from this repository, add the desired features to `devcontainer.json.`

This example use ansible-lint feature on devcontainer.

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
