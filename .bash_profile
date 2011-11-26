#.bash_profile
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi


PATH=$PATH:/Developer/android-sdk-mac_x86/tools
export PATH

PATH=$PATH:/usr/local/mysql/bin
export PATH

#alias gnuplot="/Applications/Gnuplot.app/Contents/Resources/bin/gnuplot"
#alias octave="/Applications/Octave.app/Contents/Resources/bin/octave"
#export GNUTERM=x11

#test -r /sw/bin/init.sh && . /sw/bin/init.sh
