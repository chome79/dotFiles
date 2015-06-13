
if [ -n "$SSH_CLIENT" ]; then text=" ssh-session"
fi

#################################
# Load Git Completions          #
#################################
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRAKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

if [ -f ~/git-completion.bash ]; then
    . ~/git-completion.bash
fi

gitps1="true"
if [ -f ~/git-prompt.sh ]; then
    . ~/git-prompt.sh
    gitps1="__git_ps1"
fi

#################################
# Prompt                        #
#################################
#prompt color
color="33"    #regular:yellow
#color=""

export PS1='\[\e[0;${color}m\][\t \u@\H \w${text}]\n$(${gitps1}) -> \[\e[m\]\[\e[0;37m\]'

#################################
# Environment Valuable          #
#################################
export PAGER='/usr/bin/less'
export EDITOR='/usr/bin/vim'
export HISTSIZE=100000

