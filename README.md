# Workstation Setup

```sh
mkdir -p ~/workspace
cd ~/workspace
git clone https://github.com/CubicNitrous/workstation-setup.git
cd workstation-setup
```

Run the setup with:

```sh
./scripts/setup.sh
```

`Brewfile` declares Homebrew formulae, applications, and VS Code extensions.
`dotfiles/.config/mise/config.toml` selects Node.js LTS and the latest Go release.
The root `mise.toml` defines the `mise run setup` workflow. It installs packages
and runtimes, links the selected files from `dotfiles/` into your home directory,
and applies macOS preferences. Existing dotfiles are kept as timestamped backups
before links are created. The shell entry point only bootstraps Homebrew and
mise; macOS preferences still use Apple's `defaults` and system commands.
