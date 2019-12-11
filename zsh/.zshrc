# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# http://zsh.sourceforge.net/Doc/zsh_a4.pdf
# Use of hook function.
# This function is executed before each prompt.
# We take advantage of this by saving the working directory of the last used terminal i.e. terminal that created the most recented prompt.
precmd() {
    pwd > /tmp/whereami
}

# Path to your oh-my-zsh installation.
export ZSH="/home/mudassir/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="spaceship"
POWERLEVEL9K_MODE='nerdfont-complete'
SPACESHIP_VI_MODE_SHOW=false


# Load environment variables
source ~/.ENV

# Load github repo creation script
alias newrepo='~/.scripts/newrepo'

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  docker
  docker-compose
  zsh-autosuggestions
  zsh-syntax-highlighting
  copybuffer
  extract
  colored-man-pages
  history
  npm
)

###
# Aliases
##

# Git
alias gs='git status'
alias gd='git diff'
alias ga='git add'
alias gp='git push'
alias gc='git commit -m'

# Quick configs
alias zshconfig='vim ~/.zshrc'
alias i3config='vim ~/.config/i3/config'
alias vimconfig='vim ~/.vimrc'
alias codeconfig="code $HOME/.config/Code/User/settings.json"
alias gtkconfig='vim ~/.config/gtk-3.0/gtk.css'

alias soundconfig='pavucontrol'

# Quick directory changes
alias github='cd ~/Desktop/github'
alias gitlab='cd ~/Desktop/gitlab'

# Run script that launches uom workspace
alias uomws='~/.config/i3/init-workspace-uom'

# SSH
alias uom='ssh mmappmab@kilburn.cs.manchester.ac.uk'
alias uomx='ssh -X mmappmab@kilburn.cs.manchester.ac.uk'

LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=36:*.rpm=90'
export LS_COLORS

# quick fix by using alias instead of PATH
alias idea='/home/mudassir/programs/idea-IC-191.7141.44/bin/idea.sh'

# My path customisations
export PATH="$HOME/.npm-global/bin:$node:$HOME/opt/flutter/bin:$HOME/opt/android-studio/bin:$HOME/programs/mongodb-linux-x86_64-enterprise-ubuntu1804-4.0.6/bin:$HOME/programs/vagrant_2.2.4_linux_amd64:$HOME/programs/Postman-linux-x64-7.0.6:$PATH"


# Source zsh
source $ZSH/oh-my-zsh.sh

# Default editors
export EDITOR=$(which vim)
export VISUAL=$(which vim)


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

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Use a vi-style line editing interface.
# Docs https://www.gnu.org/software/bash/manual/bashref.html#Readline-vi-Mode
# This makes some plugins for oh-my-zsh such as magic-enter break.
set -o vi

# When you press v, launch current line in full screen editor.
# See edit-command-line in zshcontrib.
bindkey -M vicmd v edit-command-line


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/mudassir/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/mudassir/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/mudassir/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/mudassir/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

conda deactivate

