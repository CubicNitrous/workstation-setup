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
`dotfiles/.config/mise/config.toml` selects the latest Go release. Node.js is
managed by NVM; add an `.nvmrc` to each project and run `nvm use` there to select
its version.
The root `mise.toml` defines the `mise run setup` workflow and declarative macOS
preferences. The setup applies them with `mise bootstrap macos defaults apply`;
check for drift later with `mise bootstrap macos defaults status`. The remaining
shell script handles the timezone, filesystem flags, and per-user screenshot
directory. Existing dotfiles are kept as timestamped backups before links are
created.
