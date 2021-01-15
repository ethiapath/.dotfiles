# export PS1="\w \! \$ "
# export PS1="\$(${my_function}) \$ "
# export PS1="\W> "

# shortcut to server
alias rockserver="mosh user@104.237.152.11"

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

alias fox="open -a '/Applications/Firefox.app'"
alias chrome="open -a '/Applications/Google Chrome.app'"



# source /Users/haatwal/Library/Preferences/org.dystroy.broot/launcher/bash/br
export PATH="/Users/haatwal/.deno/bin:$PATH"
export PATH="~/.cargo/bin:$PATH"


export PATH="$HOME/.cargo/bin:$PATH"
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/hargo/.sdkman"
[[ -s "/Users/hargo/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/hargo/.sdkman/bin/sdkman-init.sh"
