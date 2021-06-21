export GOPATH=$HOME/.go
export NVM_DIR="$HOME/.nvm"

# export PATH="$PATH:$HOME/.config/composer/vendor/bin"
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/.nimble/bin"
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:$HOME/.cargo/bin"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

export IGNOREEOF=100
export LESS=-RiMSW
export RUST_BACKTRACE=1

[ -f $HOME/tools/anaconda3/etc/profile.d/conda.sh ] && source $HOME/tools/anaconda3/etc/profile.d/conda.sh
[ -f /usr/share/nvm/init-nvm.sh ] && source /usr/share/nvm/init-nvm.sh

export PATH="$HOME/.cargo/bin:$PATH"
