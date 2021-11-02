# dotfiles
These are my dotfiles.

## Features
- super simple setup
- uses ansible and is idempotent
- keeps ```~/```clean

## Available ansible roles
- brew
	- configures homebrew includings casks
	- needs ca. 12 mins to complete
- mas
	- takes care of apps installed via Mac App Store
	- needs a minute max to complete
- duti
	- set default app associations via ```duti```
	- needs a few seconds to complete
	- note: ```duti```seems to not properly work on Big Sur
- npm
	- install the few global npm packages that I use
	- only a few seconds runtime
- osx
	- set lots of defaults for OSX and OSX apps
	- runs less than a minute
- sublime-text
	- install via brew cask & symlink

## Getting started
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

or

```
bash ./bin/setup.sh
```

(```setup.sh``` also runs the dotfiles playbook.)

## How to run
```
time ANSIBLE_CONFIG=./ansible/ansible.cfg ansible-playbook -i ansible/hosts ansible/dotfiles.yml -v --ask-become-pass
```

## Inspiration
- https://github.com/geerlingguy/mac-dev-playbook/
- https://github.com/kinglouie/ansible-role-macos
- https://github.com/fgimian/macbuild-ansible
- https://github.com/elnappo/dotfiles/
- https://github.com/adamchainz/mac-ansible
- https://github.com/TalkingQuickly/ansible-osx-setup
- https://github.com/jcf/ansible-dotfiles
- https://github.com/frdmn/dotfiles