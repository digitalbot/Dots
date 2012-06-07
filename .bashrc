#------------------------------
# ~/.bashrc
#------------------------------

# ----- prompt -----
if [ "$TERM" != "dumb" ] ;
then
    PS1='\[\033[32m\][\u@\h:\[\033[33m\]\W\[\033[32m\]]\[\033[0m\]\$ '
    PS2='\[\033[32m\]>\[\033[0m\] '
fi

# ----- env -----
PATH=/usr/local/sbin/:$PATH
PATH=$HOME/bin/:$PATH
PATH="$(brew --prefix)/bin:$PATH"
export PATH
export PAGER=less
export LESS='-R'
export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
export GNUTERM=x11
export NODE_PATH=/usr/local/lib/node_modules
export HISTCONTROL=ignoreboth
IGNOREEOF=10
HISTSIZE=50000
HISTFILESIZE=50000

# ----- include functions -----
source ~/.bash_functions

# ----- param -----
dp='~/Dropbox/Public/'

# ----- alias -----
alias _r='source ~/.bash_profile'
alias old='cd $OLDPWD'
alias quit='exit'
alias ls='ls -hFG'
alias ll='ls -l'
alias la='ls -al'
alias l.='ls -d .*'
alias less='less -M'
alias grep='grep --color'
alias sshe='cocot -t UTF-8 -p EUC-JP -- ssh'
alias cemacs='open -n /Applications/Emacs.app'
alias _emacs='emacs -q -l ~/.emacs.d/init-minimal.el'
alias ce_client='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient'
alias cdp="cd $dp"
alias bind_list_bash="bind -p | egrep -v '^#|self-insert|do-lowercase-version|digit-argument'"
alias sys_log='tail -f /var/log/system.log'
alias gnuplot="/Applications/Gnuplot.app/Contents/Resources/bin/gnuplot"
alias octave="/Applications/Octave.app/Contents/Resources/bin/octave"
alias pm_list14='cat /Users/kosuke/perl5/perlbrew/perls/perl-5.14.1/lib/5.14.1/darwin-2level/perllocal.pod | ruby -e '\''while l = gets; if r = l.match(/C<Module> L<(.*?)\|.*?>/) then puts r.captures[0]  end;end'\'' | sort -u'
alias hist='cat ~/.bash_history | $(percol)'
