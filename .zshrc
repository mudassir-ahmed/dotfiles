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

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='nerdfont-complete'

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Add new line after prompt.
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

# Customise icons used for multi-line prompt.
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="$ "

# Disable right prompt.
POWERLEVEL9K_DISABLE_RPROMPT=true

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
  git
  git-prompt
  extract
  colored-man-pages
  history
  npm
)

#source $(dirname $(gem which colorls))/tab_complete.sh

alias ll='colorls -lA --sd --group-directories-first'
alias ls='colorls --group-directories-first --git-status'
alias tree='colorls --tree'

alias zshconfig='vim ~/.zshrc'

alias i3config='vim ~/.config/i3/config'
alias i3dir='cd ~/.config/i3/'

alias vimconfig='vim ~/.vimrc'

alias gtkstyles='vim ~/.config/gtk-3.0/gtk.css'

alias soundconfig='pavucontrol'

alias javacoursework='cd ~/Desktop/gitlab/COMP16212/'

# Run script that launches uom workspace
alias uomws='~/.config/i3/init-workspace-uom'

alias uomssh='ssh mmappmab@kilburn.cs.manchester.ac.uk'
alias uomsshx='ssh -X mmappmab@kilburn.cs.manchester.ac.uk'

LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=36:*.rpm=90'
export LS_COLORS

# quick fix by using alias instead of PATH
alias idea='/home/mudassir/programs/idea-IC-191.7141.44/bin/idea.sh'

# My path customisations
export PATH="$HOME/opt/flutter/bin:$HOME/opt/android-studio/bin:$HOME/programs/mongodb-linux-x86_64-enterprise-ubuntu1804-4.0.6/bin:$HOME/programs/vagrant_2.2.4_linux_amd64:$HOME/programs/Postman-linux-x64-7.0.6:$PATH"



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


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
