# http://www.joshstaiger.org/archives/2005/07/bash_profile_vs.html
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

# run HomeAway-specific setup
if [ -f ~/.bash_ha ]; then
	source ~/.bash_ha
fi

# Note: do `brew install git bash-completion` for Git stuff to work
# enable various bash completions
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	source $(brew --prefix)/etc/bash_completion
fi

# make prompt tell us about git state
export GIT_PS1_SHOWDIRTYSTATE=true
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
