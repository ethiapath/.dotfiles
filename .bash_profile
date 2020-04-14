# export PS1="\w \! \$ "
# export PS1="\$(${my_function}) \$ "
# export PS1="\W> "

# Set architecture flags
export ARCHFLAGS="-arch x86_64"

# enable symlink shortcuts
export CDPATH="~/symlinks/"

# Ensure user-installed binaries take precedence
export PATH="/usr/local/bin:$PATH"

# Add emscripten to PATH
export PATH="/Users/Ethiapath/Development/emsdk-portable:/Users/Ethiapath/Development/emsdk-portable/clang/e1.37.9_64bit:/Users/Ethiapath/Development/emsdk-portable/node/4.1.1_64bit/bin:/Users/Ethiapath/Development/emsdk-portable/emscripten/1.37.9:$PATH"

# for sublime text shell command
# export EDITOR="/usr/local/bin/subl -w"

# installs mate shell command
# export EDITOR="/usr/local/bin/mate -w"

export EDITOR="/usr/bin/vim"

# pip should only run if there is a virtualenv currently activated
#export PIP_REQUIRE_VIRTUALENV=true

# Load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc

gpip(){
   PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
#export PATH

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
#export PATH
#export PATH="/usr/local/opt/openssl/bin:$PATH"

# auto open the daily log
o() {
  LOGPATH='/Users/haatwal/Box/LOG'
  FILENAME=$LOGPATH/$(date +"%Y_%m_%d-%b_%a").md
  touch $FILENAME
  echo >> $FILENAME
  # this date command seems to be stuck somehow reverting to basic date
  HEADER="## $(date +"%I:%M %p") -"
  echo  $HEADER >> $FILENAME
  # echo $(date) - >> $FILENAME
  vim + $FILENAME
}

# Aliases

# Copy working directory into clipboard
alias bwd="pwd | pbcopy"
alias gs='git status'
alias gl='git log'

# finger strech
alias j='clear'
alias jj='clear'
alias jjj='clear'
alias jjjj='clear'
alias jjjjj='clear'

alias spacevim='docker run -it --rm spacevim/spacevim nvim'

# macro for opening finder windows
f() {
  if [ $1 ]
  then
    open -a Finder $1
  else
    open -a Finder .
  fi
}


code() {
  if [ $1 ]
  then
    open -a /Applications/VSCodium.app $1
  else
    open -a /Applications/VSCodium.app .
  fi
}



mvim() {
  if [ $1 ]
  then
    open -a /Applications/MacVim.app $1
  else
    open -a /Applications/MacVim.app .
  fi
}



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="~/anaconda3/bin:$PATH"
export PATH="$PATH:/path/to/elixir/bin"
export PATH="/usr/local/sbin:$PATH"

export PATH="/usr/local/opt/ncurses/bin:$PATH"

export LDFLAGS="-L/usr/local/opt/ncurses/lib"
export CPPFLAGS="-I/usr/local/opt/ncurses/include"


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

alias fox="open -a '/Applications/Firefox.app'"
alias chrome="open -a '/Applications/Google Chrome.app'"

function gpom () {
  git push origin master "$@"
}

function gpo () {
  git push origin "$@"
}

function gpru () {
  git pull --rebase upstream "$@"
}

function __get_git_url () {
  local remote="${1:-origin}"
  local remote_url=$(git config remote.${remote}.url &2> /dev/null)

  if [[ -z "$remote_url" ]]
    then
      >&2 echo 'No git repository found'
      return
  fi

  if [[ "$remote_url" =~ ^(https?://)|(ssh://git@).* ]]
    then
      remote_url=$(echo "$remote_url" | sed -e 's/\.git$//g')
      remote_url=$(echo "$remote_url" | sed -e 's/^ssh:\/\/git@/https:\/\//g')
      remote_url=$(echo "$remote_url" | sed -e 's/\.com:/\.com\//g')
      echo "$remote_url"
    else
      >&2 echo 'Git repository found, but could not find a remote named origin with the format "http://" or "ssh://"'
  fi
}

function __get_git_branch () {
  echo "$(git symbolic-ref -q --short HEAD)"
}

function __get_git_username () {
  local url="$(__get_git_url)"

  if [[ "$url" =~ \.com/(.*)?/ ]]
    then echo ${BASH_REMATCH[1]}
  fi
}

function repo () {
  local url=$(__get_git_url)

  if [[ -n "$url" ]]
    then chrome "$url"
  fi
}

function repop () {
  local url="$(__get_git_url upstream)"

  if [[ -n "$url" ]]
    then chrome "${url}/pulls"
  fi
}

function repoc () {
  local base_branch="${1:-master}"
  local head_branch="${2:-$(__get_git_branch)}"
  local url=$(__get_git_url upstream)
  local username=$(__get_git_username)

  if [[ -n "$url" ]]
    then chrome "${url}/compare/${base_branch}...${username}:${head_branch}"
  fi
}

source /Users/haatwal/Library/Preferences/org.dystroy.broot/launcher/bash/br
export PATH="/Users/haatwal/.deno/bin:$PATH"
export PATH="~/.cargo/bin:$PATH"


export PATH="$HOME/.cargo/bin:$PATH"
