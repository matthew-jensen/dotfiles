rm ~/.vim/ -rf
mkdir ~/.vim
mkdir ~/.vim/autoload
mkdir ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/
git clone https://github.com/jpalardy/vim-slime.git ~/.vim/bundle/

rm ~/.vimrc
ln -s $PWD/dotfiles/.vimrc ~/

rm ~/.gitconfig
ln -s $PWD/dotfiles/.gitconfig ~/

rm ~/.bash_profile
ln -s $PWD/dotfiles/.bash_profile ~/

source ~/.bash_profile
