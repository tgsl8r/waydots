# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias dot='/usr/bin/git --git-dir=$HOME/.dots --work-tree=$HOME'
PS1='[\u@\h \W]\$ '
