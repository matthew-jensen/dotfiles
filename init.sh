rm ~/.vim/ -rf
rm ~/.vim/autoload/ -rf
rm ~/.vim/bundle/ -rf

mkdir ~/.vim
mkdir ~/.vim/autoload
mkdir ~/.vim/bundle

curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/
git clone https://github.com/jpalardy/vim-slime.git ~/.vim/bundle/

ln -sf $(pwd)/dotfiles/.vimrc ~/.vimrc
echo ".vimrc symlinked"

ln -sf $(pwd)/dotfiles/.gitconfig ~/.gitconfig
echo ".gitconfig symlinked"

ln -sf $(pwd)/dotfiles/.bash_profile ~/.bash_profile
echo ".bash_profile symlinked"

source ~/.bash_profile
