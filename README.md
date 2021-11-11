# dotfiles
These are my dotfiles.

## Features
- super simple setup
- uses ansible and is idempotent
- keeps ```~/```clean

## Available ansible roles
- brew
	- configures homebrew includings casks (runtime: a few minutes)
- duti
	- set default app associations via ```duti``` (runtime: < 1 min)
- iterm
	- ensure our own preferences file is used (runtime: seconds)
- mas
	- takes care of apps installed via Mac App Store (runtime: 1 min)
- microsoft
	- installs Microsoft Office incl. OneDrive, Teams, Remote Desktop (runtime: a few mins)
- npm
	- install the few global npm packages that I use (runtime: a few secs)
- osx
	- set lots of defaults for OSX and OSX apps (runtime: < 1 min)
- sublime-text
	- install via brew cask & symlink (runtime:  < 1 min)
- symlinks
	- softlink a bunch of config files in to ```~/```(runtime: seconds)

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

## How to make changes to this repo // pre-commit hooks
I am using ```pre-commit```in this repo to lint before commits. Install it via brew using
```
brew install pre-commit
```

## Inspiration
- https://github.com/soehlert/osx-ansible
- https://github.com/geerlingguy/mac-dev-playbook/
- https://github.com/kinglouie/ansible-role-macos
- https://github.com/fgimian/macbuild-ansible
- https://github.com/elnappo/dotfiles/
- https://github.com/adamchainz/mac-ansible
- https://github.com/TalkingQuickly/ansible-osx-setup
- https://github.com/jcf/ansible-dotfiles
- https://github.com/frdmn/dotfiles
