# .bashrc

if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export CLICOLOR=1
export HISTCONTROL=ignoreboth	#ignore dups and space
export PYTHONPATH=/usr/local/lib/python2.7/site-packages
shopt -s checkwinsize

function mcd() {
  mkdir -p "$1" && cd "$1";
}

[[ -f /usr/local/git/contrib/completion/git-completion.bash ]] && source /usr/local/git/contrib/completion/git-completion.bash
[[ -f $(brew --prefix)/etc/bash_completion ]] && source $(brew --prefix)/etc/bash_completion
export GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h: \[\e[33m\]\w\[\e[0m\] $(__git_ps1)\$ '

alias ppjson='python -mjson.tool'
alias rm='rm -i'
alias dir='ls -lgsh'
alias dira="dir -a"
alias pc='pushd $PWD'
alias gpl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(boldblue)<%an>%Creset' --abbrev-commit --"
alias vg='vagrant'
alias gos='cd $HOME/.config/sublime-text-2/Packages'
alias getjson="curl -v -H 'Accept: application/json' -H 'Content-type: application/json' -X GET"
alias lf='ls -Gl | grep ^d'
alias lsd='ls -Gal | grep ^d'
alias gohs='cd $HOME/.homesick/repos/dotfiles'
alias query='sqlite3 -header -column'
unset command_not_found_handle

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

if [ -d $HOME/apps/sublime ]; then
  PATH=$PATH:$HOME/apps/sublime
fi

[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
[[ -s $HOME/nvm/nvm.sh ]] && (source ~/nvm/nvm.sh && (nvm use 0.8.18 >> /dev/null))
export EDITOR=vim
export PATH
