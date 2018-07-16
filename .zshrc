# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
# Fill with the USER_NAME:
export ZSH=/Users/USER_NAME/.oh-my-zsh

# path to python
export PATH=$PATH:$HOME/Library/Python/2.7/

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
POWERLEVEL9K_MODE='nerdfont-complete'
ZSH_THEME="powerlevel9k/powerlevel9k"

# Powerlevel9k config
export POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(vcs dir dir_writable)
export POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker osx)
plugins=(... git-flow)
plugins=(... wd)
plugins=(... jsontools)
#plugins=(... autojump)
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

# autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# list everything
alias ll='ls -lah'

export GREEN='\e[0;32m'
export NOCOLOR='\e[0m'

# check and commit
alias sc='f() {
echo "${GREEN}Status${NOCOLOR} BEFORE"; 
git st; 
git commit -m "$@"; 
echo "${GREEN}Status${NOCOLOR} AFTER"; 
git st; 
}; f'

# create new branch
alias cb='git co -b $@'

alias r-v='git remote -v'

# create mirror repo 
# clone @ - old repo address
# push @ - new repo address
alias mirror-repo-1='git clone --mirror $@'
alias mirror-repo-2='git push --mirror $@'

# kubernetes aliases
alias kc='kubectl'
alias mk='minikube'
alias mk-upgrade='brew update; brew cask reinstall minikube'

# helm aliases
alias hd='helm delete $@ --purge' 
alias hi='p() { helm install $1 --name $2 }; p' 
alias hl='helm list' 
alias h-docker='eval $(minikube docker-env)'

# git log pretty
alias glola="git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all --author-date-order"

# zsh-bd
#. $HOME/.zsh/plugins/bd/bd.zsh

# the most usable commnands
#setopt auto_cd
#cdpath=($HOME/Hybris $HOME/Projects)

# processes
alias list-process='ps aux'
alias kill-process='sudo kill $@'
alias find-process='lsof -t -i:$@'

# replace like in git rebase:
# * on the word -> cgnWORD_TO_REPLACE<ESC> -> . on every word to be replaced
# caw - remove the word under the cursor and start insert mode
# daw - remove the word under the cursor
