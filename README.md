# dotfiles

## Install with chezmoi

```bash
make bootstrap install
```

This applies links from `.mappings` using chezmoi.

## Optional external repositories

To include additional mapping repositories (for example `config` and `agents`), set URLs in `.chezmoidata.toml`:

```toml
[externalRepos.config]
url = "https://github.com/<owner>/config.git"

[externalRepos.agents]
url = "https://github.com/<owner>/agents.git"
```
