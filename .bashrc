#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
# alias grep='grep --color=auto'
# PS1='[\u@\h \W]\$ '

xhost +SI:localhost:root

source /etc/profile

if [ -f ~/.alias ]; then
	source ~/.alias
fi

