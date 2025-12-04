set prompt="%n@%m:%B%~%%%b "
set ignoreeof
unset autologout

# set path = (</home/sano2/path> $path)

set history = (1000 "%h, %Y/%W/%D %T: %R\n")
set savehist=1000

alias ls 'ls -aF --color=auto'
alias less 'less -X'

alias rm 'rm -iv'
alias cp 'cp -v'
alias mv 'mv -v'

alias rename 'rename -v'
alias rmdir 'rmdir -v'

alias quit 'exit'

alias librstart 'sudo systemctl start libradtran-interface'
alias librstop  'sudo systemctl stop libradtran-interface'
alias journal   'sudo journalctl -fu libradtran-interface'
