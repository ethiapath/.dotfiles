alias pip=/usr/local/bin/pip3
alias python=/usr/local/bin/python3

alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi


alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"



alias gpum="git pull upstream master"
alias gprum="git pull --rebase upstream master"
alias gp="git push"
alias gc="git commit"
alias gca="git commit --amend"
alias gcan="git commit --amend --no-edit"
alias gcm="git commit -m"
alias gst="git stash"
alias gsta="git stash apply"
alias gstp="git stash pop"
alias gh="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
alias gco="git checkout"
alias gcom="git checkout master"
alias gb="git branch"
alias gd="git diff"
alias gfp="git push -f"
alias gcanfp="git commit --amend --no-edit && git push -f"

function gpom () {
  git push origin master "$@"
}

function gpo () {
  git push origin "$@"
}

function gpru () {
  git pull --rebase upstream "$@"
}


