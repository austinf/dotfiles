# .bash_profile

# aliases
alias ll='ls -l'
alias l.='ls -al'
alias grep='grep --color=tty'

export CLICOLOR=1
export EDITOR='vim'

export HISTSIZE=10000
export HISTFILESIZE=10000
shopt -s histappend


# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

SED_VERSION=`sed --version 2>&1 | head -1 | cut -f4 -d' '`
if [ "$SED_VERSION" != "4.1.5" ]; then
    export PS1='\[\033[0;35m\]\h\[\033[0;33m\] \w\[\033[00m\] `git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`\[\033[37m\]$\[\033[00m\]: '
fi

# User specific environment and startup programs
export PATH=$PATH:$HOME/.local/bin:$HOME/bin

# macports path
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

