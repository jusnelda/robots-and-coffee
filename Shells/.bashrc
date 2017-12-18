

# sets vim a default editor
export EDITOR=/usr/bin/vim

# Adds git to prompt
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true

# Shorten working directory
export SHORT_PWD='$(echo -n "${PWD/#$HOME/~}" | awk -F "/" '"'"'{
    if (length($0) > 30) { if (NF>4) print $1 "/" $2 "/.../" $(NF-1) "/" $NF;
    else if (NF>3) print $1 "/" $2 "/.../" $NF;
    else print $1 "/.../" $NF; }
    else print $0;}'"'"')'

if [ "$TERM" = "linux" ]
    then
      # this is your prompt including git; \u is the user, \h is the host \w is the path; colors are in [] more info in the tutorial
    export PS1='\u \[\033[32m\]\u@\h\[\033[38;5;169m\]:\[\033[94m\]\w\[\033[31m\]$(__git_ps1)\[\033[31m\]\$ '
else
    #  we're not on the console, assume an xterm => put user@host:path in titlebar
    # time (command no):path (git)  
    # \033 is equal to \e
    export PS1='\[\e]2;\u@\h:\w\a\]\[\033[38;5;169m\]\u \[\033[38;5;169m\]:\[\033[94m\]$(eval "echo ${SHORT_PWD}")\[\033[96m\]$(__git_ps1)\[\033[00m\]\$ '
fi
# Make grep look a bit nicer
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'

# Really useful, commands are not casesensitive anymore
bind 'set completion-ignore-case on'
# accelerate the refresh rate of your shell, so you can feel more in touch with your editor etc...
xset r rate 200 30
