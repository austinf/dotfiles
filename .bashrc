# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export HISTSIZE=10000
export HISTFILESIZE=10000
shopt -s histappend

export EDITOR='vim'

alias grep='grep --color=tty'

