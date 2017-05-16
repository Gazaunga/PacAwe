### ls aliases
# alias ll='ls -al'
# alias ll='ls -l'
# alias la='ls -A'
# alias l='ls -CF'

# enable color support of "ls" and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto --group-directories-first -F'
fi

# reboot / shutdown sudo aliases
alias reboot='sudo reboot'
alias shutdown='sudo shutdown -h now'

# grep with color
alias grep='grep --color=auto'

# screen aliases
alias sdr='screen -dr'
alias sx='screen -x'

# Safety
alias mv='mv -i'
alias rm='rm -I'  # 'rm -i' prompts for every file
alias cp='cp -i'
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

alias pacman="pacman --color=always"

alias mount='mount | column -t'

alias errors="sudo journalctl -p 0..3 -xn"

# Cups
alias startprint="systemctl start org.cups.cupsd.service"
alias stopprint="systemctl stop org.cups.cupsd.service"

# List declared aliases, functions

alias listaliases="alias | sed 's/=.*//'"
alias listfunctions="declare -f | grep '^[a-z].* ()' | sed 's/{$//'" # show non _prefixed functions
