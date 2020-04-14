#!/bin/bash

FILES=(
".zim"
".bash_profile"
".bashrc"
".tmux.conf"
".vimrc"
".vim"
".zshrc"
".zimrc"
".zshenv"
".zprofile"
".zlogin"
".npmrc"
)

# FILES$(cat files)
# FILES=$'\r\n' GLOBIGNORE='*' command eval  'XYZ=($(cat files))'

echo "Array size: ${#FILES[*]}"

echo "Array items:"
for item in ${FILES[*]}
do
    printf "linking %s to ~/%s\n" $item $item
    ln -s $item ~/$item
done


# ln -s .zim/ ~/.zim
# ln -s .bash_profile ~/.bash_profile
# ln -s .bashrc ~/.bashrc
# ln -s tmux.conf ~/tmux.conf
# ln -s .vimrc ~/.vimrc
# ln -s .vim ~/.vim
# ln -s .zshrc ~/.zshrc
# ln -s .zimrc ~/.zimrc
# ln -s .zshenv ~/.zshenv
# ln -s .zprofile ~/.zprofile
# ln -s .zlogin ~/.zlogin
# ln -s .npmrc ~/.npmrc
