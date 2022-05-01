# dotfiles
These are my dotfiles. There are many like them, but these ones are mine.

## Features
- super simple setup
- uses ansible and is idempotent
- keeps ```~/```clean

## Available ansible roles
- brew
	- configures homebrew includings casks (runtime: a few minutes)
- dock
	- configure your OSX dock (runtime: < 1 min)
- duti
	- set default app associations via ```duti``` (runtime: < 1 min)
- hazel
	- ensure basic Hazel.app settings (runtime: seconds)
- iterm
	- ensure our own preferences file is used (runtime: seconds)
- maintenance
	- runs a few maintenance tasks like repairPermissions, verifyVolume (runtime: several minutes)
- mas
	- takes care of apps installed via Mac App Store (runtime: 1 min)
- microsoft
	- installs Microsoft Office incl. OneDrive, Teams, Remote Desktop (runtime: a few mins)
- npm
	- install the few global npm packages that I use (runtime: a few secs)
- osx
	- set lots of defaults for OSX and OSX apps (runtime: < 1 min)
- softwareupdate
	- check ```softwareupdate```for things we might need to install (runtime: seconds ideally)
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

## How to run with a one-liner
Run this:
```
curl -L https://raw.github.com/jansroka/dotfiles/master/bin/setup.sh | bash
```
Make sure to read the code before running.

## How to run with options
```
time ANSIBLE_CONFIG=./ansible/ansible.cfg ansible-playbook -i ansible/hosts ansible/dotfiles.yml -v --ask-become-pass
```

## How to run the maintenance playbook only for softwareupdates
Run this:
```
time ANSIBLE_CONFIG=./ansible/ansible.cfg ansible-playbook -i ./ansible/hosts ./ansible/maintenance.yml -v --ask-become-pass --tags softwareupdate
```

## How to run the full maintenance playbook
Run this:
```
time ANSIBLE_CONFIG=./ansible/ansible.cfg ansible-playbook -i ./ansible/hosts ./ansible/maintenance.yml -v --ask-become-pass
```

## How to make changes to this repo // pre-commit hooks
I am using ```pre-commit```in this repo to lint before commits. Install it via brew using
```
brew install pre-commit
```

## Contributing
- Fork it ( https://github.com/jansroka/dotfiles/fork)
- Create your feature branch (```git checkout -b my-new-feature```)
- Commit your changes (```git commit -am 'Add some feature'```)
- Push to the branch (```git push origin my-new-feature```)
- Create a new Pull Request

## Inspiration
- https://github.com/soehlert/osx-ansible
- https://github.com/geerlingguy/mac-dev-playbook/
- https://github.com/geerlingguy/ansible-collection-mac
- https://github.com/kinglouie/ansible-role-macos
- https://github.com/fgimian/macbuild-ansible
- https://github.com/elnappo/dotfiles/
- https://github.com/adamchainz/mac-ansible
- https://github.com/TalkingQuickly/ansible-osx-setup
- https://github.com/jcf/ansible-dotfiles
- https://github.com/frdmn/dotfiles
