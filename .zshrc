# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias pds='ssh pds-sw'
alias ob='ssh olivebaboon'
alias kaiken='ssh kaiken'
alias olivebaboon='ssh olivebaboon'
alias blobfish='ssh blobfish'
alias tardigrade='ssh tardigrade'
alias rsw='~/bin/remount-skunk.sh'
alias rstr='~/bin/remount-strike.sh'
alias mg='cd ~/Documents/git'
alias maj='cd ~/Documents/git/aquent-jquery/'
alias ms='cd ~/src'
alias md='cd ~/Downloads'
alias mc='cd ~/Documents'
alias cwa='cd ~/src/naiad.webapp.streamate'
alias cnw='cd ~/src/naiad.web'
alias cwp='cd ~/WebstormProjects'
alias nt='npm test'
alias gs='git status'
alias accountsdb="mysql -u root -p accounts"
alias mysqladmin=/usr/local/mysql/bin/mysqladmin
#alias dir="ls -la"
alias csn="cd ~/src/naiad.service.perfsearch"
alias csp='cd ~/src/naiad.service.perfsearch.skin'
#alias ll='ls -alrth'
alias rsl="rsync -avm --include='*.js' -f 'hide,! */' ~/src/naiad.service.perfsearch/lib/  ~/Skunk/naiad/service/naiad.service.perfsearch/src/master/lib/"
alias rsit="rsync -avm --include='*.js' -f 'hide,! */' ~/src/naiad.service.perfsearch/test/integration/  ~/Skunk/naiad/service/naiad.service.perfsearch/src/master/test/integration/"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home"

export M2_HOME="/Users/georgei/Downloads/apache-maven-3.2.1"
export M2="$M2_HOME/bin"

export PATH=$PATH:"$M2:$JAVA_HOME/bin:/opt/local/bin:/opt/local/sbin:/usr/local/share/npm/bin:/Users/georgei/bin:/usr/local/mysql/bin:/Users/georgei/Downloads/apache-ant-1.9.3/bin:/Users/georgei/Downloads/adt-bundle-mac-x86_64-20131030/sdk/tools:$M2:/Users/georgei/Downloads/scala-2.10.3/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/Users/georgei/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
