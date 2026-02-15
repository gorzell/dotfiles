
export PATH:=~/.local/bin:$(PATH)

.PHONY: bootstrap
bootstrap: install-chezmoi

.PHONY: install
install:
	~/.local/bin/chezmoi apply --source "$(CURDIR)"

.PHONY: install-chezmoi
install-chezmoi:
	sh -c "$$(curl -fsLS get.chezmoi.io)" -- -b ~/.local/bin
	mkdir -p ~/.local/bin
