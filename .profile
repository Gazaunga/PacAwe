# Setting TERM glob var to a 256 color to fix some issues like airline colors
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
   export TERM='xterm-256color'
else
   export TERM='xterm-color'
fi

# Export xdg in order to be able to execute bspwm
XDG_CONFIG_HOME="$HOME/.config"
export XDG_CONFIG_HOME

# Export xdg data #
XDG_DATA_HOME="$HOME/.local/share"
export XDG_DATA_HOME

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
export HISTCONTROL=ignoreboth:ignoredups:erasedups

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
export HISTSIZE=1000
export HISTFILESIZE=1000

# improved bash history
export HISTTIMEFORMAT="%h/%d - %H:%M:%S "

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
