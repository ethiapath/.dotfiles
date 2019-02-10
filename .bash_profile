#export PS1="\w \! \$ "
CHAR="༇"
my_function="
    prompt=\" \\[`tput sc`\\]  \\[`tput rc`\\]\\[\$CHAR\\] \"
    echo -e \$prompt"

#export PS1="\$(${my_function}) \$ "
export PS1="\$ "


# Set architecture flags
export ARCHFLAGS="-arch x86_64"

# enable symlink shortcuts
export CDPATH="~/symlinks/"

# Ensure user-installed binaries take precedence
export PATH="/usr/local/bin:$PATH"

# Add emscripten to PATH
export PATH="/Users/Ethiapath/Development/emsdk-portable:/Users/Ethiapath/Development/emsdk-portable/clang/e1.37.9_64bit:/Users/Ethiapath/Development/emsdk-portable/node/4.1.1_64bit/bin:/Users/Ethiapath/Development/emsdk-portable/emscripten/1.37.9:$PATH"

# for sublime text shell command
export EDITOR="/usr/local/bin/subl -w"

# installs mate shell command
export EDITOR="/usr/local/bin/mate -w"

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


export PATH="$HOME/.cargo/bin:$PATH"


# auto open the daily log
o() {
  LOGPATH='/Users/ethiapath/Documents/Documents-HargobindsMacBookPro/LOG'
  FILENAME=$LOGPATH/$(date +"%Y-%m%b-%d-%a").txt
  touch $FILENAME
  echo >> $FILENAME
  # this date command seems to be stuck somehow reverting to basic date
  echo $(date +"%I:%M %p") - >> $FILENAME
  # echo $(date) - >> $FILENAME
  vim + $FILENAME
}

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
    open -a /Applications/Visual\ Studio\ Code.app $1
  else
    open -a /Applications/Visual\ Studio\ Code.app .
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
