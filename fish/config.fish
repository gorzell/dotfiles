# Universal Settings
set -x LSCOLORS gxfxcxdxbxegedabagacad
set -x PATH ~/.local/bin ~/.rbenv/bin ~/bin /usr/local/bin $PATH
set -x GNUPGHOME ~/encrypted/gpg-keychain
set -x UID (id -u)
set -x GID (id -g)

## VIM Mode Settings
fish_vi_key_bindings
bind -M insert -m default jj backward-char force-repaint

# OS Specific Settings
switch (uname)
case Darwin
    set -x JAVA_HOME /Library/Java/JavaVirtualMachines/openjdk-14.0.2.jdk/Contents/Home
    set -x AWS_CRED_PATH /Volumes/ENCRYPTED/aws/infrastructure.properties
    set -x AWS_CREDENTIAL_PROFILES_FILE /Volumes/ENCRYPTED/aws/keen/keen.ini
    set -x XDG_CONFIG_HOME ~/.config
    status --is-interactive; and source (rbenv init -|psub)
    starship init fish | source
case Linux
    set -x PATH ~/.cargo/bin $PATH
    set -x JAVA_HOME /usr/lib/jvm/zulu-14-amd64
    set -x JDK_18 /usr/lib/jvm/zulu-8-amd64
    status --is-interactive; and source (rbenv init -|psub)
    alias pbcopy='xsel --clipboard --input'
    alias pbpaste='xsel --clipboard --output'
    starship init fish | source
end

# Source this last becasue it sets HOMEs.
source ~/.asdf/asdf.fish
