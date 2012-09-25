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

# User specific environment and startup programs
export PATH=$PATH:$HOME/.local/bin:$HOME/bin

# macports path
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

