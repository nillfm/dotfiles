ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

autoload -U colors
colors
setopt prompt_subst

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

plugins=(
  git
  osx
  ruby
  brew
  gem
  rails3
  rake
  sublime
)

source $ZSH/oh-my-zsh.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/fwmyers/.rvm/bin:/Users/fwmyers/.local/bin:/Users/fwmyers/bin
PATH=$PATH:$HOME/.rvm/bin

setopt menucomplete
