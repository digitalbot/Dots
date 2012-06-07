#------------------------------
# ~/.bash_profile
#------------------------------

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

if [ -f `brew --prefix`/etc/bash_completion ]; then
    source `brew --prefix`/etc/bash_completion
fi
