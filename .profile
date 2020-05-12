export GOPATH=$HOME/.go

export PATH="$PATH:$HOME/.config/composer/vendor/bin"
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/.nimble/bin"
export PATH="$PATH:$GOPATH/bin"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

export IGNOREEOF=100

source $HOME/tools/anaconda3/etc/profile.d/conda.sh
source /usr/share/nvm/init-nvm.sh
