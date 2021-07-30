FILES:=.vimrc .gitconfig .bash_profile

all:$(FILES)
	source ${HOME}/.bash_profile

$(FILES):
	cp -rf dotfiles/$@ ${HOME}/$@ 

clean:
	@echo "clean: idk yet.\nTODO: default config swap\n- .git-config.sample.\n- .debian_bash_profile.sample\n- .vimrc.sample?"
