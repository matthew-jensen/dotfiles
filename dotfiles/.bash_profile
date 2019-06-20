export VISUAL=vim
export EDITOR="$VISUAL"

function homestead() {
    ( cd ~/Homestead && vagrant $* )
}
alias hup="homestead up && homestead ssh"

PATH=$PATH:$HOME/.config/composer/vendor/bin
