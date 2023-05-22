# Dotfiles location
DOTFILES="~/dotfiles"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

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
  magic-enter
)

# Allows hidden files to be matched without explicity specifying the dot
setopt globdots

# https://unix.stackexchange.com/questions/19530/expanding-variables-in-zsh
set -o shwordsplit

# Default editors
export EDITOR=$(which nvim)
export VISUAL=$(which nvim)
alias v="nvim"
alias vim="nvim"


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
alias starshipconfig="$EDITOR $DOTFILES/starship/.config/starship.toml"

# }}}


# My path customisations
PATH=$PATH:/usr/bin/local
PATH=$PATH:$HOME/.npm-global/bin
PATH=$PATH:$HOME/bin/opencv
PATH=$PATH:$HOME/bin/opencv_contrib
PATH=$PATH:$HOME/bin/opencv-build
PATH=$PATH:$HOME/bin/scripts
PATH=$PATH:/usr/local/bin/aws_completer
export PATH

# Source zsh
source $ZSH/oh-my-zsh.sh

# https://superuser.com/questions/685005/tmux-in-zsh-with-vi-mode-toggle-cursor-shape-between-normal-and-insert-mode
export VI_MODE_SET_CURSOR=true


# Theme used for bat command (one dark)
export BAT_THEME="OneHalfDark"

# Theme used for fzf (one dark)
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
--color=dark
--color=fg:-1,bg:-1,hl:#c678dd,fg+:#ffffff,bg+:#4b5263,hl+:#d858fe
--color=info:#98c379,prompt:#61afef,pointer:#be5046,marker:#e5c07b,spinner:#61afef,header:#61afef
'

export do="--dry-run=client -o yaml"
alias kn="k config set-context --current --namespace "
export now="--force --grace-period=0"


eval "$(starship init zsh)"

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
