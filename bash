# Git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#------------------------------
export PS1="\h@\u \[\033[1;94m\]\w\[\033[0;91m\]\$(parse_git_branch)\[\033[00m\] $ "

export LC_ALL=ru_RU.UTF-8
export CLICOLOR=1

export PATH="$PATH:/usr/local/smlnj/bin"

#-------------------------------
alias prog='cd ~/programming'
alias lsla='ls -la'
