# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# My theme to load; others in ~/.oh-my-zsh/themes/
ZSH_THEME="takashiyoshida"

# Plugins; others in in ~/.oh-my-zsh/plugins/*)
plugins=(git osx)

source $ZSH/oh-my-zsh.sh

# Colors, from http://stackoverflow.com/a/16844327
# Use like ${Gre}some text${RCol}
RCol='\033[0m'    # Text Reset
# Regular           Bold                Underline           High Intensity      BoldHigh Intens     Background          High Intensity Backgrounds
Bla='\033[0;30m';     BBla='\033[1;30m';    UBla='\033[4;30m';    IBla='\033[0;90m';    BIBla='\033[1;90m';   On_Bla='\033[40m';    On_IBla='\033[0;100m';
Red='\033[0;31m';     BRed='\033[1;31m';    URed='\033[4;31m';    IRed='\033[0;91m';    BIRed='\033[1;91m';   On_Red='\033[41m';    On_IRed='\033[0;101m';
Gre='\033[0;32m';     BGre='\033[1;32m';    UGre='\033[4;32m';    IGre='\033[0;92m';    BIGre='\033[1;92m';   On_Gre='\033[42m';    On_IGre='\033[0;102m';
Yel='\033[0;33m';     BYel='\033[1;33m';    UYel='\033[4;33m';    IYel='\033[0;93m';    BIYel='\033[1;93m';   On_Yel='\033[43m';    On_IYel='\033[0;103m';
Blu='\033[0;34m';     BBlu='\033[1;34m';    UBlu='\033[4;34m';    IBlu='\033[0;94m';    BIBlu='\033[1;94m';   On_Blu='\033[44m';    On_IBlu='\033[0;104m';
Pur='\033[0;35m';     BPur='\033[1;35m';    UPur='\033[4;35m';    IPur='\033[0;95m';    BIPur='\033[1;95m';   On_Pur='\033[45m';    On_IPur='\033[0;105m';
Cya='\033[0;36m';     BCya='\033[1;36m';    UCya='\033[4;36m';    ICya='\033[0;96m';    BICya='\033[1;96m';   On_Cya='\033[46m';    On_ICya='\033[0;106m';
Whi='\033[0;37m';     BWhi='\033[1;37m';    UWhi='\033[4;37m';    IWhi='\033[0;97m';    BIWhi='\033[1;97m';   On_Whi='\033[47m';    On_IWhi='\033[0;107m';

export PATH=/usr/local/bin:/usr/texbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:~/.cabal/bin
alias ll="ls -larth"
alias -s txt=less
alias df="df -h"
alias du="du -h"
alias grep="grep --color"
myip () { ifconfig | grep "inet " | awk '{ print $2 }' | grep -v "^127" }

HISTSIZE=100000
SAVEHIST=100000

export EDITOR=emacs

bindkey "\C-w" kill-region

# dose of Futurama
gshuf -n1 ~/.futurama

# less for stderr
sess () { $1 2>&1 >/dev/null | less }

# syntax highlighting for less
export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
export LESS=' -R '

# emacs daemon
export ALTERNATE_EDITOR=""
alias em='emacsclient'
alias cmacs=/Applications/Emacs.app/Contents/MacOS/Emacs # for cocoa emacs

# python startup
export PYTHONSTARTUP=~/.pythonrc.py

# alias make to m (save keystrokes!)
alias m=make
