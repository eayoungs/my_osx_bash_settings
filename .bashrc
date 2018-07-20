## Bash one-liners
# find . -name "*.t1" -exec rename 's/\.t1$/.t2/' '{}' \;

# Git aware prompt
# https://github.com/jimeh/git-aware-prompt
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

export PS1="\[\033[0;32m\] \u@\h \[\033[0;33m\] \w$ \[\033[0m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

echo "export PATH=~/bin:$PATH" >> ~/.profile

# Homebrew
export PATH=/usr/local/bin:$PATH

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    source $(brew --prefix)/etc/bash_completion
fi

# Python virtual environments
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

export PIP_REQUIRE_VIRTUALENV=true

gpip3() {
   PIP_REQUIRE_VIRTUALENV="" pip3 "$@"
}

gpip() {
    PIP_REQUIRE_VIRTUALENV="" pip "$@"
}


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
