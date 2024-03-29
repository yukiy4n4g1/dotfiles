#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s autocd
shopt -s checkwinsize

stty stop undef

set bell-style none


alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias pypy='pypy3'
alias python='python3'
alias grep='grep --color=auto'
alias doco='docker-compose'
alias vbm='vboxmanage'
alias bashrc='vim $HOME/.bashrc'
alias v='vim'
alias emacs='emacs -nw'
alias vimrc='vim ~/.vimrc'
alias copy='xsel --clipboard --input'
alias gpp='g++'
alias sl='ls'
alias chmod='chmod --preserve-root'
alias chown='chown --preserve-root'
if type batcat &> /dev/null; then
  alias bat='batcat'
fi
if type fdfind &> /dev/null; then
  alias fd='fdfind'
fi
if type exa &> /dev/null; then
  alias ls='exa --group-directories-first'
  alias la='exa --group-directories-first -a'
  alias ll='exa -hal --git --time-style=long-iso --group-directories-first'
else
  alias ls='ls --color=auto'
  alias ll='ls -alF'
  alias la='ls -A' 
fi

nr () {
  filename="$(echo $1 | sed 's/\.[^\.]*$//')"
  nim c -r --hints:off $1
  [ -f $filename ] && rm -f $filename
}

# load fzf 
[ -f /usr/share/doc/fzf/examples/completion.bash ] && . /usr/share/doc/fzf/examples/completion.bash
[ -f /usr/share/doc/fzf/examples/key-bindings.bash ] && . /usr/share/doc/fzf/examples/key-bindings.bash
[ -f /usr/share/fzf/completion.bash ] && . /usr/share/fzf/completion.bash
[ -f /usr/share/fzf/key-bindings.bash ] && . /usr/share/fzf/key-bindings.bash

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

emoji=("🐧" "👽" "🎃" "💤" "🌋" "🔚" "🤔")
e_num=$(($RANDOM % ${#emoji[*]}))

PS1='┬─\[\033[01;32m\]\u\[\033[00m\] \[\033[00;33m\]\t \[\033[01;34m\]\w$(__git_ps1 " (%s)")\[\033[00m\] ${emoji[$e_num]}\n╰─>>> '
if ! shopt -oq posix; then
  if [ -f /usr/share/git/completion/git-prompt.sh ]; then
    . /usr/share/git/completion/git-prompt.sh
  elif [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  else
    PS1='┬─\[\033[00;35m\]\u\[\033[00m\] \[\033[00;34m\]\t \[\033[00;36m\]\w\[\033[00m\] ${emoji[$e_num]}\n╰─>>> '
  fi
fi
