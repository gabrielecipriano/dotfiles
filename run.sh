#!/bin/bash

set -euo pipefail

determine_platform() {
  platform="unknown"
  if [[ "$(uname)" == "Linux" ]]; then
    platform="linux"
  elif [[ "$(uname)" == "Darwin" ]]; then
    platform="macos"
  else
    echo "Unknown OS"
    exit 1
  fi
}

install_ansible() {
  if [[ "$platform" == "linux" ]]; then
    sudo apt install ansible -y
  elif [[ "$platform" == "macos" ]]; then
    log "Installing/upgrading Homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    log "Installing/upgrading OhMyZSH"
    /bin/bash -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    log "Installing Ansible"
    brew install ansible
  fi
}

log() {
  echo
  echo "----------------------------------------------------------------------"
  echo "$1"
  echo "----------------------------------------------------------------------"
  echo
}

log "Oh boy, here I go installin' again!"
determine_platform

if ! which ansible-playbook > /dev/null 2>&1 ; then
  echo "ansible-playbook not found on \$PATH, installing"
  install_ansible
fi

(
  cd "$(dirname "$0")"
  cmd="ansible-playbook -i localhost, --tags ${platform} --con local playbook.yml"
  $cmd
)

log "Don't forget to read the post install steps for your OS in README.md."
