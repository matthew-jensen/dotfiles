DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cp -rf $DIR/dotfiles/.vimrc $HOME/.vimrc 
echo ".vimrc copied"

cp $DIR/dotfiles/.gitconfig $HOME/.gitconfig
echo ".gitconfig copied"

cp $DIR/dotfiles/.bash_profile $HOME/.bash_profile
echo ".bash_profile copied"

source $HOME/.bash_profile
