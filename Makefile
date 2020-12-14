
export PATH:=~/.local/bin:$(PATH)


.PHONY: bootstrap
bootstrap: install-dot install-git-repos

.PHONY: install
install:
	~/.local/bin/dot link
	#vim +PluginInstall +qall

.PHONY: install-dot
install-dot:
	curl -Lso dot.tar.gz https://github.com/ubnt-intrepid/dot/releases/download/v0.1.4/dot-v0.1.4-x86_64-unknown-linux-gnu.tar.gz
	tar zxvf dot.tar.gz
	chmod +x dot
	mkdir -p ~/.local/bin
	mv dot ~/.local/bin
	rm -f dot.tar.gz

.PHONY: install-git-repos
install-git-repos:
	git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.8
	git clone https://github.com/rbenv/rbenv.git ~/.rbenv
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim