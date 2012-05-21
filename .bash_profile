source /usr/local/git/contrib/completion/git-completion.bash
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
export GIT_PS1_SHOWDIRTYSTATE=1

source /usr/local/bin/virtualenvwrapper.sh

# lots of builds fail since Apple helpfully decided to drop PPC support in XCode 4
export ARCHFLAGS="-arch i386 -arch x86_64"
export PIP_DOWNLOAD_CACHE=$HOME/.pip_download_cache

# aliases
alias fabs='fab push_vhost:staging;'

alias mmfdev-vm="/Users/jeremyboyd/Repos/mmf_deploy/vagrant/mmfdev/mmfdev-vm"
alias apireq='curl -v -i -H "X-Consumer-Key: b513571b80685c74fa95b7755d916c24048889df4" -H "Authorization: Basic bWlrZWF0bW1mOjdFTkwyQnJF"'
alias clean_pyco='find . -type f -name "*.py[co]" -exec rm -f {} \;'
alias clean_orig='find . -type f -name "*.orig" -exec rm -f {} \;'
alias clean_pycache='find . -type d -name "__pycache__" -exec rm -rf {} \;'
alias madison='ssh panama@madison.mapmyfitness.com'
alias rtrtapi='ssh jeremy.boyd@rtrtapi01.dfw1.mapmyfitness.com'
alias trackapi='ssh jeremy.boyd@trackapi01.dfw1.mapmyfitness.com'
export PATH=/Library/Frameworks/Python.framework/Versions/2.6/bin:$PATH

#added by: mmf-panama-install.sh: Mon Jan 30 16:43:46 CST 2012
export PATH=$PATH:/usr/local/mysql/bin

# added by: mmf-panama-install.sh: Mon Jan 30 16:56:50 CST 2012
export WORKON_HOME=$HOME/.virtualenvs
export PIP_VIRTUALENV_BASE=$WORKON_HOME
[[ -s '/Library/Frameworks/Python.framework/Versions/2.6/bin/virtualenvwrapper.sh' ]] && source '/Library/Frameworks/Python.framework/Versions/2.6/bin/virtualenvwrapper.sh'

[[ -s '/Library/Frameworks/Python.framework/Versions/2.6/bin/virtualenvwrapper_bashrc' ]] && source '/Library/Frameworks/Python.framework/Versions/2.6/bin/virtualenvwrapper_bashrc'

# added by: mmf-panama-install.sh: Mon Jan 30 16:56:51 CST 2012
export MMF_CHECKOUT="/Users/jeremyboyd/Workspace/panama"
export MMF_DIRNAME=`dirname "$MMF_CHECKOUT"`

# added by hand for rabbitmq (will help with other sbin installs via brew)
# ammended by hand for brew (/u/l/b first)
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Amended by hand for GDAL config
export PATH=/Library/Frameworks/GDAL.framework/Programs:$PATH

# Setting PATH for MacPython 2.6
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.6/bin:${PATH}"
export PATH
