ZSH=$HOME/.oh-my-zsh
ZSH_THEME="jreese"
DISABLE_AUTO_UPDATE=true

autoload -U colors
colors
setopt prompt_subst
unset command_not_found_handle

#git
alias gpl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
alias gitadd="git add . -A"
alias gita="git add ."

alias rm='rm -i'
alias dir='ls -lgsh'
alias dira="dir -a"
alias pc='pushd $PWD'
alias vg='vagrant'
alias gos='cd $HOME/.config/sublime-text-2/Packages'
alias lf='ls -Gl | grep ^d'
alias lsd='ls -Gal | grep ^d'
alias gohs='cd $HOME/.homesick/repos/dotfiles'
alias et='subl ~/.Documents/time.txt'

ES_VM_ROOT=/Users/fmyers/dev/chef-repo/vagrant/elasticsearch_only
alias start-es='cd ${ES_VM_ROOT} && vagrant up'
alias halt-es='cd ${ES_VM_ROOT} && vagrant halt'

# misc dev
alias getjson="curl -v -H 'Accept: application/json' -H 'Content-type: application/json' -X GET"
alias pj='python -mjson.tool'
alias query='sqlite3 -header -column'

# d3 specific
alias goweb='cd ~/dev/ngc-web'
alias gosvc='cd ~/dev/ngc-dragon'
alias godomain='cd ~/dev/ngc-domain'
alias jump='ssh -i ~/.ssh/fmyers_ng_aws_rsa 54.236.109.32'

alias restart-net='sudo sh -c "ifconfig en0 down && ifconfig en0 up"'
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
PATH=$PATH:$HOME/bin
PATH=$PATH:/usr/local/share/npm/bin

fpath=(/usr/local/share/zsh-completions $fpath)

rvm use 1.9.3
setopt menucomplete
