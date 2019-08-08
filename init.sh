DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
rm $HOME/.vim/ -rf
rm $HOME/.vim/autoload/ -rf
rm $HOME/.vim/bundle/ -rf

mkdir $HOME/.vim
mkdir $HOME/.vim/autoload
mkdir $HOME/.vim/bundle

curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/ctrlpvim/ctrlp.vim.git $HOME/.vim/bundle/ctrlp.vim
git clone https://github.com/jpalardy/vim-slime.git $HOME/.vim/bundle/vim-slime

cp -rf $DIR/dotfiles/.vimrc $HOME/.vimrc 
echo ".vimrc copied"

cp $DIR/dotfiles/.gitconfig $HOME/.gitconfig
echo ".gitconfig copied"

cp $DIR/dotfiles/.bash_profile $HOME/.bash_profile
echo ".bash_profile copied"

source $HOME/.bash_profile
