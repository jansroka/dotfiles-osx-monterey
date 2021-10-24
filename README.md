# dotfiles

# Getting started

You’ll need the following dependencies before getting started.

- Ansible
- Homebrew
- Xcode

At the time of writing it’s possible to get all three like so:

```
xcode-select --install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install ansible
```

# How to run
```
ANSIBLE_CONFIG=./ansible/ansible.cfg ansible-playbook -i ansible/hosts ansible/dotfiles.yml
```

## Inspiration
- https://github.com/adamchainz/mac-ansible
- https://github.com/TalkingQuickly/ansible-osx-setup
- https://github.com/jcf/ansible-dotfiles