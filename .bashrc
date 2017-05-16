# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

### less / pager setup
# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bash_prompt ]; then
    . ~/.bash_prompt
else
  PS1='> '
fi

if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
fi

# man pages: color
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;33m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m

# include ~/bin/ in $PATH if it exists
if [ -d ~/bin ]; then
    export PATH="$PATH:~/bin"
fi

# enable ** (bash 4 only)
shopt -s globstar

if [[ "$TERM" == "rxvt-unicode" ]]; then
    export TERM="rxvt-unicode-256color"
fi

