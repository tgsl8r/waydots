# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

## alisases and functions
alias ls='ls --color=auto'
alias dot='/usr/bin/git --git-dir=$HOME/.dots --work-tree=$HOME'
alias n='nvim'
alias lazy='NVIM_APPNAME=nvim-lazy nvim'
alias sudo='sudo '

# yazi helper
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# Activate mise
eval "$(mise activate bash)"

# prompt
PS1='[\u@\h \W]\$ '
