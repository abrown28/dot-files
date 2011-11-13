# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

alias vi='vim'

export PATH

export PS1="[\e[0;31m\h\e[0;37m \W]\$ "
