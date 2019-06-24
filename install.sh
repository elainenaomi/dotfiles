#!/usr/bin/env bash

# Dotfiles vars
export DOTFILES="${HOME}/.dotfiles"
export DOTFILES_INSTALLER="${DOTFILES}/scripts"

source ${DOTFILES}/scripts/utils

ask_for_sudo

print_in_purple 'Running installers\n'

${DOTFILES_INSTALLER}/brew
${DOTFILES_INSTALLER}/xcode
${DOTFILES_INSTALLER}/shell
${DOTFILES_INSTALLER}/asdf
${DOTFILES_INSTALLER}/git
${DOTFILES_INSTALLER}/osx
${DOTFILES_INSTALLER}/sublime-text

print_in_green '\nSuccess!\n' && exit 0

mkdir -p $HOME/dev/{elainenaomi,plataformatec}
echo "👉 Creating directories on '~/dev'..."

exit 0
