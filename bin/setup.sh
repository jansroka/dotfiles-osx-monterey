#!/usr/bin/env bash
set -e

echo "[i] Ask for sudo password"
sudo -v

# move to ~ if we are not there yet
cd

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

# check if we need to clone dotfiles
if [[ ! -d ~/Code/Private/dotfiles/ ]]; then
    echo "[i] Cloning dotfiles directory"
    git clone https://github.com/jansroka/dotfiles.git ~/Code/Private/dotfiles/
fi

cd ~/Code/Private/dotfiles/
echo "[i] Git pull'ing dotfiles repo from Github"
git pull origin master

# Run main playbook
echo "[i] Run Playbook"
ANSIBLE_CONFIG=./ansible/ansible.cfg ansible-playbook -i ansible/hosts ansible/dotfiles.yml -v

echo "[i] Done."
exit 0
