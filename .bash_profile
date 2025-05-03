# .bash_profile

# Source bashrc
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

# Add user scripts to PATH
PATH=~/.local/bin:$PATH

if [ -n "$TMUX" ];
then
  echo tmux
else
  exec wstart
fi

