
export PATH:=~/.local/bin:$(PATH)

.PHONY: bootstrap
bootstrap:
	curl -Lso dot.tar.gz https://github.com/ubnt-intrepid/dot/releases/download/v0.1.4/dot-v0.1.4-x86_64-unknown-linux-gnu.tar.gz
	tar zxvf dot.tar.gz
	mkdir -p ~/.local/bin
	mv dot ~/.local/bin
	rm -f dot.tar.gz

.PHONY: install
install:
	dot link