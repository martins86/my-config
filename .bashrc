alias c="reset"

alias status="git status -s"

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_SHOWUNTRACKEDFILES=1

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1='\[\033[0;32m\]\[\033[0m\033[0;32m\]\n'
PS1+='[\t]'
PS1+=' - '
PS1+='\u\[\033[0;36m\]'
PS1+=' @ '
PS1+='\[\033[0;36m\]\h'
PS1+=' \[\033[38;5;13m\]<`pwd | sed "s#\(/[^/]\{1,\}/[^/]\{1,\}/[^/]\{1,\}/\).*\(/[^/]\{1,\}/[^/]\{1,\}\)/\{0,1\}#\1_\2#g"`>\[\033[38;5;13m\]:'
PS1+='\[\033[0;32m\]\n'
PS1+='\[\033[0;32m\]|\[\033[0m\033[0;32m\] '
PS1+='\[\033[0;32m\]\n'
PS1+='\[\033[0;32m\]└─\[\033[0m\033[0;32m\] '
PS1+='\$\[\033[0m\033[0;32m\]\[\033[38;5;1m\]$(parse_git_branch)\[\033[38;5;1m\]'
PS1+='\[\033[0;32m\] ▶\[\033[0m\] '
export PS1
