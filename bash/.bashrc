# .bashrc

#USER_AGENT="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
#SFEED_CURL="curl -L -A \"$USER_AGENT\""


export EDITOR=nvim  # or vim, emacs, etc.
export VISUAL=nvim  # or vim, emacs, etc.

export LD_LIBRARY_PATH=/home/test/code/td/build:$LD_LIBRARY_PATH
# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH=$PATH:~/code/dmenu_scripts/
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
. "$HOME/.cargo/env"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

alias vim="nvim"

user=$(whoami)


if [ "$user" = "test" ]; then
  user="daniel"
fi

# Print the new value of user for verification
export PS1="\[\e[0;36m\e[3m\]$user\[\e[0;31m\e[3m\]@\[\e[0;36m\e[3m\]\h:\[\e[0;93m\e[3m\]\w\[\e[0m$ \]"
#export PS1="\[\e[0;36m\]\[e[3m\]$user\[\e[0;31m\]\[e[3m\]@\[\e[0;36m\]\[e[3m\]\h:\[\e[0;93m\]\[e[3m\]\w\[\e[0m\]$ "
