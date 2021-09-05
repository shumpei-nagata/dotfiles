DOT_DIR="${HOME}/dotfiles"

set -e

echo "Deploying Dotfiles..."

for file in .??*; do
    [ -e ${HOME}/${file} ] && rm -f ${HOME}/${file}
    [[ $(file) = ".git" ]] && continue
    [[ $(file) = ".gitignore" ]] && continue
    ln -snfv ${DOT_DIR}/${file} ${HOME}/${file}
done

echo "Deploy Dotfiles completed."