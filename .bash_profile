export VISUAL=vim
export EDITOR="$VISUAL"

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

# if in caen
if ( lsb_release -is | grep "RedHatEnterpriseServer" >/dev/null ) ; then
    # Set gcc version 7.1.0 (EECS 482)
    module load gcc/7.1.0
fi
