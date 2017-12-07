[ -n "$PS1" ] && source ~/.bash_profile;

# Add pyenv to the PATH
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

# @TODO: figure out why this is erroring out?
# pyenv virtualenvwrapper

export NVM_DIR="/home/dill/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
