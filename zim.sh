#!/bin/zsh

mkdir ${HOME}/zsh_original

for file in .??*; do
    [ -e ${HOME}/${file} ] && mv ${HOME}/${file} ${HOME}/zsh_original/${file}
    [[ ${file} = ".git" ]] && continue
    [[ ${file} = ".gitignore" ]] && continue
done

if ! [ -d ${HOME}/.zim ]; then
    curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
fi