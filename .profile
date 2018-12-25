# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
_byobu_sourced=1 . /home/linuxbrew/.linuxbrew/Cellar/byobu/5.127/bin/byobu-launch 2>/dev/null || true

XMODMAP_CONF="$HOME/.Xmodmap"
logger Trying to apply $XMODMAP_CONF
if [ -f $XMODMAP_CONF ]; then
	. $XMODMAP_CONF
	logger $XMODMAP_CONF result: $?
else
	logger $XMODMAP_CONF not found
fi
