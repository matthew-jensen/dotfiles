.PHONY: nvim git shell

all: nvim git shell

git:
	stow git -t ${HOME}

nvim:
	stow nvim -t ${HOME}/.config/

shell:
	stow shell -t ${HOME}
