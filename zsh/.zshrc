# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Sticky working directory {{{

# http://zsh.sourceforge.net/Doc/zsh_a4.pdf
# Use of hook function.
# This function is executed before each prompt.
# We take advantage of this by saving the working directory of the last used terminal i.e. terminal that created the most recented prompt.
# precmd() {
#     pwd > /tmp/whereami
# }

# Go to the directory - will always have a value since precmd() ran first
# LAST_LOCATION="/tmp/whereami"
# if [ -f "$LAST_LOCATION" ]; then
#     cd $(cat $LAST_LOCATION)
# fi

# }}}

# Path to your oh-my-zsh installation.
export ZSH="/home/mudassir/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="spaceship"
POWERLEVEL9K_MODE='nerdfont-complete'
SPACESHIP_VI_MODE_SHOW=false

# Load environment variables
source ~/.ENV


# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  docker
  docker-compose
  zsh-autosuggestions
  zsh-syntax-highlighting
  extract
  colored-man-pages
  npm
)

# Default editors
export EDITOR=$(which vim)
export VISUAL=$(which vim)

# But we prefer neovim if installed
which nvim > /dev/null
if [ $? -eq 0 ]; then
    export EDITOR=$(which nvim)
    export VISUAL=$(which nvim)
    # Default to vim to nvim
    alias vim="$EDITOR"
    alias vimtutor="$EDITOR -c Tutor"
fi


# Aliases {{{

# Navigate quicker without saving to history
alias q=' exit'
alias e=' exit'
alias c=' clear'

# Find commands quicker
# Notice the space - this won't add the history command to your history
# Otherwise could lead to inception :)
alias hg=' history | grep'

# Quick directory changes
alias  dotfiles="cd ~/dotfiles"
alias downloads="cd ~/Downloads"
alias    github='cd ~/git/github'
alias    gitlab='cd ~/git/gitlab'
alias   scripts="cd ~/bin/scripts"

# Edit quicker
alias v="$EDITOR"

# Git
alias  ga='git add'
alias gap='git add --patch'
alias  gb='git branch'
alias  gc='git commit --verbose'
alias gc!='git commit --verbose --amend'
alias gcf='git config --list'
alias gco='git checkout'
alias  gd='git diff'
alias  gl='git log'
alias  gm='git merge'
alias  gp='git push'
alias  gs='git status'

# Quick configs
alias     zshconfig="$EDITOR ~/.zshrc"
alias      i3config="$EDITOR ~/.config/i3/config"
alias     vimconfig="$EDITOR ~/.vimrc"
alias    codeconfig="$EDITOR ~/.config/Code/User/settings.json"
alias     gtkconfig="$EDITOR ~/.config/gtk-3.0/gtk.css"
alias    roficonfig="$EDITOR ~/.config/rofi/config"
alias      rtconfig="$EDITOR ~/.config/rofi/themes/custom-nord.rasi"
alias comptonconfig="$EDITOR ~/.config/compton.conf"

# Sound config
alias soundconfig='pavucontrol'

# Weather
alias weather='curl wttr.in'

# Run script that launches uom workspace
alias uomws='~/.config/i3/init-workspace-uom'

# SSH
alias uom='ssh mmappmab@kilburn.cs.manchester.ac.uk'
alias uomx='ssh -X mmappmab@kilburn.cs.manchester.ac.uk'

# }}}


# My path customisations
PATH=$PATH:/usr/bin/local
PATH=$PATH:$HOME/.npm-global/bin
PATH=$PATH:$HOME/opt/flutter/bin
PATH=$PATH:$HOME/opt/android-studio/bin
PATH=$PATH:$HOME/bin/clion-2019.3.4/bin
PATH=$PATH:$HOME/bin/opencv
PATH=$PATH:$HOME/bin/opencv_contrib
PATH=$PATH:$HOME/bin/opencv-build
PATH=$PATH:$HOME/bin/scripts
export PATH

# Homebrew 
# eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# Update search path environment variable for linux shared library
# Fix for opencv library missing issue when compiling
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/lib

# Source zsh
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# SSH 
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Use a vi-style line editing interface.
# Docs https://www.gnu.org/software/bash/manual/bashref.html#Readline-vi-Mode
# This makes some plugins for oh-my-zsh such as magic-enter break.
set -o vi

# When you press v, launch current line in full screen editor.
# See edit-command-line in zshcontrib.
bindkey -M vicmd v edit-command-line

# Fix Hyper first line precent sign
# https://github.com/zeit/hyper/issues/2144
# https://superuser.com/questions/645599/why-is-a-percent-sign-appearing-before-each-prompt-on-zsh-in-windows
# unsetopt PROMPT_SP

# Set primary display with xrandr
# This is used by i3 for the tray option
# @docs https://i3wm.org/docs/userguide.html#_tray_output
# WARNING: this could break since display name is hard coded
# You may neeed to change this if installing dotfiles on another device
xrandr --output HDMI-0 --primary
