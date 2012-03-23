if [ "$TERM" != "dumb" ] ;
then
    PS1='\[\033[32m\][\u@\h:\[\033[33m\]\w\[\033[32m\]]\[\033[0m\]\$ '
    PS2='\[\033[32m\]>\[\033[0m\] '
fi

# permission
umask 022
# DON'T make core
ulimit -c 0

export PAGER=less

export HISTCONTROL=ignoreboth

export PATH="$(brew --prefix)/bin:$PATH"
source ~/perl5/perlbrew/etc/bashrc

alias quit='exit'
alias ls='ls -hFG'
alias la='ls -al'
alias l.='ls -d .*'
alias less='less -M'
alias grep='grep --color'
alias sshe='cocot -t UTF-8 -p EUC-JP -- ssh'
alias cemacs='open -n /Applications/Emacs.app'
alias ce_client='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient'
alias terminal='open -n /Applications/Utilities/Terminal.app'
#alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'
dp='~/Dropbox/Public/'
alias cdp="cd $dp"
alias old="cd $OLDPWD"
alias bind_list_bash="bind -p | egrep -v '^#|self-insert|do-lowercase-version|digit-argument'"
alias syslog='tail -f /var/log/system.log'

#base pm_list:
#alias pm_list="cat `perldoc -l perllocal` | ruby -e 'while l = gets; if r = l.match(/C<Module> L<(.*?)\|.*?>/) then puts r.captures[0]  end;end' | sort -u"

alias yappo="perl -MAcme::Oppai -e 'print Acme::Oppai->new(default => 'default')->oppai';"

