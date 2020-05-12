#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source /usr/share/git/completion/git-prompt.sh

emoji=("🐧" "👽" '🎃' '💤' '🌋' '🔚' "🤔")
e_num=$(($RANDOM % ${#emoji[*]}))
# PS1='\[\033[00;36m\]\u\[\033[00m\]@\[\033[00;36m\]\h\[\033[00m\]:\[\033[00;32m\]\w\[\033[00m\]\ $' 
PS1='┬─\[\033[00;35m\]\u\[\033[00m\] \[\033[00;34m\]\t \[\033[00;36m\]\w$(__git_ps1 " (%s)")\[\033[00m\] ${emoji[$e_num]}\n╰─>>> ' 

shopt -s autocd
shopt -s checkwinsize

stty stop undef

alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias pypy='pypy3'
alias grep='grep --color=auto'
alias doco='docker-compose'
alias vbm='vboxmanage'
alias bashrc='nvim $HOME/.bashrc'
alias v='nvim'
alias emacs='emacs -nw'
#alias vim='nvim'
alias vimrc='nvim ~/.config/nvim/init.vim'
alias copy='xsel --clipboard --input'
alias gpp='g++'
alias sl='ls'
alias chmod='chmod --preserve-root'
alias chown='chown --preserve-root'

htdocs='/opt/lampp/htdocs'


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /home/ykyng/.nvm/versions/node/v10.15.3/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /home/ykyng/.nvm/versions/node/v10.15.3/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /home/ykyng/.nvm/versions/node/v10.15.3/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /home/ykyng/.nvm/versions/node/v10.15.3/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /home/ykyng/.nvm/versions/node/v10.15.3/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash ] && . /home/ykyng/.nvm/versions/node/v10.15.3/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash


