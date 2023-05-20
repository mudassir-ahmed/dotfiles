# Dotfiles location
DOTFILES="~/dotfiles"

# Path to your oh-my-zsh installation.
export ZSH="/home/mudassir/.oh-my-zsh"


# Set name of the theme to load
# ZSH_THEME="spaceship"
POWERLEVEL9K_MODE='nerdfont-complete'

# Spaceship only show normal mode indicator
SPACESHIP_VI_MODE_SHOW=true
SPACESHIP_VI_MODE_PREFIX=""
SPACESHIP_VI_MODE_SUFFIX=""
SPACESHIP_VI_MODE_INSERT=""
SPACESHIP_VI_MODE_NORMAL=""

# Use a more aesthetic git branch symbol
SPACESHIP_GIT_SYMBOL="שׂ "

# Change some symbols used by spaceship
SPACESHIP_PACKAGE_SYMBOL=" "

# SPACESHIP_PROMPT_ORDER=(
#   git
# )

# Load environment variables
source ~/.ENV

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  aws
  colored-man-pages
  docker
  docker-compose
  extract
  frontend-search
  gradle
  kubectl
  last-working-dir
  minikube
  node
  npm
  terraform
  vault
  vi-mode
  web-search
  you-should-use
  zsh-autosuggestions
  zsh-syntax-highlighting
)

PATH=$PATH:/snap/bin # gets nvim working over ssh

# Allows hidden files to be matched without explicity specifying the dot
setopt globdots

# https://unix.stackexchange.com/questions/19530/expanding-variables-in-zsh
set -o shwordsplit

# But we prefer neovim if installed
#alias nvim="$HOME/Desktop/nvim.appimage"
# Default editors
export EDITOR=$(which nvim)
export VISUAL=$(which nvim)
alias v="nvim"
alias vim="nvim"

# which nvim > /dev/null
# if [ $? -eq 0 ]; then
#     export EDITOR=$(which nvim)
#     export VISUAL=$(which nvim)
#     # Default to vim to nvim
#     alias vim="$EDITOR"
#     alias  vi="$EDITOR"
#     alias vimtutor="$EDITOR -c Tutor"
# fi


# Aliases {{{

# Find commands quicker
alias h='`history | sed "s/^ *[^ ]* *//" | sort | uniq | fzf`'

# Install quicker
alias i='sudo apt install'

# Quick directory changes
alias  dotfiles="cd $DOTFILES"
alias      dots="cd $DOTFILES"
alias downloads="cd ~/Downloads"
alias    github='cd ~/git/github'
alias    gitlab='cd ~/git/gitlab'
alias   scripts="cd ~/bin/scripts"
alias      repo='cd ~/git/`cd ~/git && ls | fzf`'

# Edit quicker
alias v="$EDITOR"

# Git
alias  ga='git add'
alias gap='git add --patch'
alias  gb='git branch'
alias  gc='git commit --verbose'
alias gc!='git commit --verbose --amend'
alias gcl='git clone'
alias gcf='git config --list'
alias gco='git checkout'
alias  gd='git diff'
alias  gl='git log'
alias  gm='git merge'
alias  gp='git push'
alias  gs='git status'

# Git tree
alias gtree='git ls-tree -r --name-only HEAD | tree -a --fromfile'

# Docker clean state
alias docker-reset='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'

# Quick configs
# TODO: make this a fz script instead
alias       zshconfig="$EDITOR $DOTFILES/zsh/.zshrc"
alias        i3config="$EDITOR $DOTFILES/i3/.config/i3/config"
alias       vimconfig="$EDITOR $DOTFILES/vim/.vimrc"
alias      nvimconfig="$EDITOR $DOTFILES/nvim/.config/nvim/init.lua"
alias      codeconfig="$EDITOR $DOTFILES/vscode/.config/Code/User/settings.json"
alias       gtkconfig="$EDITOR $DOTFILES/gtk-theme/.config/gtk-3.0/gtk.css"
alias      roficonfig="$EDITOR $DOTFILES/rofi/.config/rofi/config"
alias        rtconfig="$EDITOR $DOTFILES/rofi/.config/rofi/themes/custom-nord.rasi"
alias   comptonconfig="$EDITOR $DOTFILES/compton/.config/compton.conf"
alias alacrittyconfig="$EDITOR $DOTFILES/alacritty/.config/alacritty/alacritty.yml"
alias tmuxconfig="$EDITOR $DOTFILES/tmux/.config/tmux/tmux.conf"
alias starshipconfig="$EDITOR $DOTFILES/starshipconfig/.config/starship.toml"

# }}}


# My path customisations
PATH=$PATH:/usr/bin/local
PATH=$PATH:$HOME/.npm-global/bin
PATH=$PATH:$HOME/bin/opencv
PATH=$PATH:$HOME/bin/opencv_contrib
PATH=$PATH:$HOME/bin/opencv-build
PATH=$PATH:$HOME/bin/scripts
PATH=$PATH:$HOME/git/lua-language-server/bin
PATH=$PATH:/usr/local/bin/aws_completer
export PATH

# Source zsh
source $ZSH/oh-my-zsh.sh

# https://superuser.com/questions/685005/tmux-in-zsh-with-vi-mode-toggle-cursor-shape-between-normal-and-insert-mode
export VI_MODE_SET_CURSOR=true

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

# Theme used for bat command (one dark)
export BAT_THEME="OneHalfDark"

# Theme used for fzf (one dark)
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
--color=dark
--color=fg:-1,bg:-1,hl:#c678dd,fg+:#ffffff,bg+:#4b5263,hl+:#d858fe
--color=info:#98c379,prompt:#61afef,pointer:#be5046,marker:#e5c07b,spinner:#61afef,header:#61afef
'

# Fix Hyper first line precent sign
# https://github.com/zeit/hyper/issues/2144
# https://superuser.com/questions/645599/why-is-a-percent-sign-appearing-before-each-prompt-on-zsh-in-windows
# unsetopt PROMPT_SP


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/mudassir/.sdkman"
[[ -s "/home/mudassir/.sdkman/bin/sdkman-init.sh" ]] && source "/home/mudassir/.sdkman/bin/sdkman-init.sh"

NODE_PATH="/usr/local/lib/node_modules" 



# https://github.com/chromium/chromium/blob/master/docs/linux/build_instructions.md
export PATH="$PATH:$HOME/bin/depot_tools"

alias luamake=/home/mudassir/git/lua-language-server/3rd/luamake/luamake

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion



export do="--dry-run=client -o yaml"
alias kn="k config set-context --current --namespace "
export now="--force --grace-period=0"


eval "$(starship init zsh)"
