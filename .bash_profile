export PS1='\u@\h[\w]\$ ' 

alias cwa='cd ~/src/naiad.webapp.streamate'
alias cnw='cd ~/src/naiad.web'
alias cwp='cd ~/WebstormProjects'
alias nt='npm test'
alias gs='git status'
alias accountsdb="mysql -u root -p accounts"
alias mysqladmin=/usr/local/mysql/bin/mysqladmin
alias dir="ls -la"
alias csn="cd ~/src/naiad.service.perfsearch"
alias csp='cd ~/src/naiad.service.perfsearch.skin'
alias ll='ls -alrth'
alias rsl="rsync -avm --include='*.js' -f 'hide,! */' ~/src/naiad.service.perfsearch/lib/  ~/Skunk/naiad/service/naiad.service.perfsearch/src/master/lib/"
alias rsit="rsync -avm --include='*.js' -f 'hide,! */' ~/src/naiad.service.perfsearch/test/integration/  ~/Skunk/naiad/service/naiad.service.perfsearch/src/master/test/integration/"
alias rsut='rsync -avm --include='\''*.js'\'' -f '\''hide,! */'\'' ~/src/naiad.service.perfsearch/test/unit/  ~/Skunk/naiad/service/naiad.service.perfsearch/src/master/test/unit/'

##
# Your previous /Users/georgei/.bash_profile file was backed up as /Users/georgei/.bash_profile.macports-saved_2013-06-04_at_12:24:20
##

# MacPorts Installer addition on 2013-06-04_at_12:24:20: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/share/npm/bin:$HOME/bin:/usr/local/mysql/bin:~/Downloads/apache-maven-3.1.1/bin:~/Downloads/scala-2.10.3/bin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# see: http://stufftohelpyouout.blogspot.com/2010/01/show-name-of-git-branch-in-prompt.html
# see also: http://superuser.com/questions/31744/how-to-get-git-completion-bash-to-work-on-mac-os-x
# see also: http://stackoverflow.com/questions/347901/what-are-your-favorite-git-features-or-tricks
# install http://macports.org/
# sudo port selfupdate
# sudo port install git-core +bash_completion
#if [ -f ~/.git-completion.bash ]; then
#  source ~/.git-completion.bash
#  export PS1='[\W]$(__git_ps1 "(%s)"): '
#fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

#if [ -f ~/git-prompt/git-prompt.sh ]; then
#  source ~/git-prompt/git-prompt.sh 
  #export PS1='Geoff[\W]$(__git_ps1 "(%s)"): '
#  export PS1='[\W]$(__git_ps1 "(%s)"): '
#fi

if [ -f ~/.bash_prompt ]; then
  source ~/.bash_prompt 
fi
