
export PATH:=~/.local/bin:$(PATH)

.PHONY: bootstrap
bootstrap: install-dot

.PHONY: install
install:
	~/.local/bin/dot link

.PHONY: install-dot
install-dot:
	curl -Lso dot.tar.gz https://github.com/ubnt-intrepid/dot/releases/download/v0.1.4/dot-v0.1.4-x86_64-unknown-linux-gnu.tar.gz
	tar zxvf dot.tar.gz
	chmod +x dot
	mkdir -p ~/.local/bin
	mv dot ~/.local/bin
	rm -f dot.tar.gz

