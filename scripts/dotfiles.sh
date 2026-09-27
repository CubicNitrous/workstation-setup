#!/usr/bin/env bash
set -e

DOTFILES_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/../dotfiles" && pwd)"

for relative_path in \
  .zshrc \
  .gitconfig \
  .config/topgrade.toml \
  .config/starship.toml \
  .config/gh/config.yml \
  .config/ghostty/config \
  .config/mise/config.toml
do
  source_path="${DOTFILES_DIR}/${relative_path}"
  target_path="${HOME}/${relative_path}"
  mkdir -p "$(dirname "$target_path")"

  if [ -L "$target_path" ] && [ "$(readlink "$target_path")" = "$source_path" ]; then
    continue
  fi

  if [ -e "$target_path" ] || [ -L "$target_path" ]; then
    backup_path="${target_path}.backup.$(date +%Y%m%d%H%M%S).$$"
    mv "$target_path" "$backup_path"
    echo "Backed up ${target_path} to ${backup_path}"
  fi

  ln -s "$source_path" "$target_path"
  echo "Linked ${target_path}"
done
