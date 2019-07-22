# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

alias vi='vim'
alias ll='ls -l'

export PATH

export PS1="[\e[0;32m\h\e[0;37m \W]\n\$ "
export HISTTIMEFORMAT="%d/%m/%y %T "
