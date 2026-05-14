set prompt="%n@%m:%B%~%%%b "
set ignoreeof
unset autologout

# set path = (</home/sano2/path> $path)

set history = (1000 "%h, %Y/%W/%D %T: %R\n")
set savehist=1000

bindkey -k up history-search-backward
bindkey -k down history-search-forward

#alias sl 'ls'

alias ls 'ls -abF --color=auto'
alias less 'less -X'

alias rm 'rm -iv'
alias cp 'cp -iv'
alias mv 'mv -iv'

alias rename 'rename -v'
alias rmdir 'rmdir -v'
alias tar 'tar -k'

alias quit 'exit'

alias py 'python3'

alias fix_display 'setenv DISPLAY `tmux show-env | grep "^DISPLAY" | cut -d= -f2`; unsetenv XAUTHORITY'

alias librstart 'sudo systemctl start libradtran-interface'
alias librstop  'sudo systemctl stop libradtran-interface'
alias journal   'sudo journalctl -fu libradtran-interface'

set path = ($home/.local/bin $path)
