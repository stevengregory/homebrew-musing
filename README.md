# Homebrew Tap for Musing CLI

Official Homebrew tap for [Musing CLI](https://github.com/stevengregory/musing-cli) - a project-agnostic command-line tool for managing multi-service development stacks.

## Installation

```bash
brew tap stevengregory/musing
brew install musing
```

## Usage

```bash
musing version            # Check version
musing monitor            # Live monitoring dashboard
musing dev                # Manage development stack
musing deploy news prod   # Deploy MongoDB collections
musing tunnel             # Manage SSH tunnel
musing ssh                # Interactive SSH session
```

## Documentation

For full documentation, see the [musing-cli repository](https://github.com/stevengregory/musing-cli).

## Updating

```bash
brew update && brew upgrade musing
```

## Uninstall

```bash
brew uninstall musing
brew untap stevengregory/musing
```
