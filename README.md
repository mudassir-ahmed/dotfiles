# Dotfiles

Since many people at University have asked me for them, I have decided to put my dotfiles on github.

Below shows some of the things that these dotfiles customise. ![alt text](preview.png 'Setup Preview')

- i3 window manager (with i3blocks)
- Neovim
- ZSH
- oh-my-zsh
- custom scripts
- rofi

You will find a fair amount of alias and customisation in the read command files which may need altering to suit your preference.

## Dependancies

- i3
- vim
- ZSH

## Installation

Just clone the dot files and move the files in the appropriate directories using GNU `stow`. By default the stow command will create symlinks for files in the parent directory of where you execute the command.

### Let's install ZSH config for example

Assuming dotfiles are at `~/dotfiles`. Go into the directory and `stow zsh`.

_Note: In depth guide and installation script may be coming soon, if I get a demand for it_.
