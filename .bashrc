#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#!/usr/bin/env bash
stty -ixon
source /usr/share/powerline/bindings/bash/powerline.sh
[ -f $HOME/.config/alias ] && source $HOME/.config/alias

#Add .local/bin to path
if [ -d "$HOME/.local/bin" ] ; then
    export PATH="$PATH:$(du $HOME/.local/bin | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
fi

# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION