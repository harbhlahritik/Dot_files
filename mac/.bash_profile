
# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
export PATH=/usr/local/mysql/bin:$PATH

PS1="${debian_chroot:+($debian_chroot)}"
PS1+="\[\033[36m\]\u"
PS1+="\[\033[m\]@"
PS1+="\[\033[32m\]\h"
PS1+="\[\033[m\]:"
PS1+="\[\033[33;1m\]\W"
PS1+="\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias py='python3'
alias pip='python3 -m pip'
alias s='source env/bin/activate'

source ~/.bashrc
