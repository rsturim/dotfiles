# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="agnoster"
ZSH_THEME="robbyrussell"
# ZSH_THEME="af-magic"
# ZSH_THEME=random

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

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

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}


#****************
# General Shell stuff
#****************
alias eb="code ~/.zshrc"
alias es="code ~/.zshrc"
alias ez="code ~/.zshrc"
alias eohmyz="code ~/.oh-my-zsh"
alias eohmyzsh="code ~/.oh-my-zsh"

alias edithosts="code /etc/hosts"
alias editknownhosts="code /Users/richsturim/.ssh/known_hosts"
alias ekh=editknownhosts
alias flush="sudo dscacheutil -flushcache"
alias flushcache="dscacheutil -flushcache"
alias flushdns='dscacheutil -flushcache'
alias getpath='printf "%q\n" "$(pwd)" | pbcopy'
alias ll='ls -la'
alias md='mkdir -p'; alias rd='rmdir'; mcd () { mkdir "$@" && cd "$_"; }
alias pwd2='printf "%q\n" "$(pwd)" | pbcopy'
alias ss="source ~/.zshrc"
alias sz="source ~/.zshrc"   

#****************
# WORK ALIASES
#****************
alias plu="cd /Users/richsturim/git/platform-ui"
alias rundev36="plu;npm run start -- --env devInstance=platform-dev36.dragos.services"
alias rundev26="plu;npm run start -- --env devInstance=platform-dev26.dragos.services"
alias runald="plu;npm run start -- --env devInstance=alduin-sitestore.hq.dragos.services"
alias run165="plu;npm run start -- --env devInstance=10.20.14.165"
alias runtrog="plu;npm run start -- --env devInstance=trogdor-sitestore.hq.dragos.services"
alias runtrogtc="plu;npm run start -- --env devInstance=trogdor-sitestore.hq.dragos.services --env typeCheck"

alias runtrogold="plu;npm run start -- --env.devInstance=trogdor-sitestore.hq"

# testing 
alias qrtl="test:rtl:ci"

#****************
# HELPFUL ALIASES
#****************
alias pserver='python -m SimpleHTTPServer'
alias hideicons="defaults write com.apple.finder CreateDesktop false;killall Finder"
alias showicons="defaults write com.apple.finder CreateDesktop true;killall Finder"

#****************
# Git Stuff
#****************

alias branchdiff='git diff --name-status'
alias diffbranch='git diff --name-status'
alias gb='git branch'
alias gba='git branch -a'
alias gbn="git branch | grep '^\*' | cut -d' ' -f2 | pbcopy"
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gd='git diff | mate'
alias gds='git diff | subl'
alias gitkbg='gitk --all &'
alias gitpull='git pull'
alias glog="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
alias glogme="git log --author='Rich Sturim <rich.sturim@dealer.com>'"
alias glogmefiles="git log  --after={3.week.ago} --no-merges  --author=Rich --oneline --pretty="format:" --name-only"
alias glp='git log --pretty=oneline'
alias gpo="git push origin | pbpaste"
alias graph='git log --oneline --graph --all --decorate'
alias gst='git status'
alias latest="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))' | tail -r"
alias prune='git remote prune origin'
alias pullgit="find ~/git -maxdepth 3 -name '.git' -type d -print0 2> /dev/null | xargs -0 -I{} bash -c 'cd {}/..; pwd; git rev-parse --abbrev-ref HEAD; git pull; git remote prune origin; echo; echo'"

#****************
# Open Apps
#****************
alias startday="cd /Users/richsturim/git/platform-ui;open -a Google\ Chrome;open -a Visual\ Studio\ Code.app;open -a Sourcetree;open -a Slack;pullgit" 
alias s1="open -a Google\ Chrome;open -a Visual\ Studio\ Code.app;open -a Sourcetree;" 

#****************
# Npm
#****************
alias npm-default='npm config set registry https://registry.npmjs.org'
alias viewnpmrc='code ~/.npmrc'
alias editnpmrc="viewnpmrc"

#****************
# PROJECTS
#****************
alias sites="cd ~/sites"

#****************
# FROM Jusin Casey
#****************
alias ssh='ssh -A'

# file system
# ll='ls -alF' # Linux
# alias ll='gls -alF --group-directories-first --color=auto' #mac
# alias ll='ls -G' #mac
alias la='ls -A'
alias l='ls -CF'

# weather
alias weather='curl http://wttr.in/05445'

#Git
alias gittags='git tag | xargs -I@ git log --format=format:"%ai @%n" -1 @ | sort | awk "{print $4}"'
alias gitvisual='git log --graph --full-history --all --color \--pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'
alias gitpull='git pull -pp'    

#****************
# FROM Jusin Casey END
#****************


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
