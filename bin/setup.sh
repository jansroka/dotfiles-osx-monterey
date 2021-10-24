#!/usr/bin/env bash
set -e

echo "[i] Ask for sudo password"
sudo -v

# install Command Line Tools
if [[ ! -x /usr/bin/gcc ]]; then
  echo "[i] Install macOS Command Line Tools"
  xcode-select --install
fi

# install homwbrew
if [[ ! -x /usr/local/bin/brew ]]; then
  echo "[i] Install Homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# install ansible
if [[ ! -x /usr/local/bin/ansible ]]; then
    echo "[i] Install Ansible"
    brew install ansible
fi

# Run main playbook
echo "[i] Run Playbook"
ANSIBLE_CONFIG=./ansible/ansible.cfg ansible-playbook -i ansible/hosts ansible/dotfiles.yml -v

echo "[i] Done."
exit 0