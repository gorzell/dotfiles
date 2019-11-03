# Universal Settings
set -x LSCOLORS gxfxcxdxbxegedabagacad
set -x PATH ~/.local/bin ~/bin /usr/local/bin $PATH
set -x GNUPGHOME ~/encrypted/gpg-keychain

## VIM Mode Settings
fish_vi_key_bindings
bind -M insert -m default jj backward-char force-repaint

# OS Specific Settings
switch (uname)
case Darwin
    set -x JAVA_HOME /Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home
    set -x AWS_CRED_PATH /Volumes/ENCRYPTED/aws/infrastructure.properties
    set -x AWS_CREDENTIAL_PROFILES_FILE /Volumes/ENCRYPTED/aws/keen/keen.ini
    set -x XDG_CONFIG_HOME ~/.config
    status --is-interactive; and source (rbenv init -|psub)
    set fish_function_path $fish_function_path "/usr/local/lib/python2.7/site-packages/powerline/bindings/fish"
    powerline-setup
case Linux
    set -x PATH ~/.cargo/bin $PATH
    set -x JAVA_HOME /usr/lib/jvm/zulu-12-amd64
    set -x JDK_18 /usr/lib/jvm/zulu-8-amd64
    # set -x JDK_18 ~/.asdf/installs/java/8.172
    # set -x JDK_19 /etc/alternatives/java_sdk_9
    set -x JDK_110 /etc/alternatives/java_sdk_10
    set fish_function_path $fish_function_path "/usr/lib/python3/dist-packages/powerline/bindings/fish"
    powerline-setup
    status --is-interactive; and source (rbenv init -|psub)
    alias pbcopy='xsel --clipboard --input'
    alias pbpaste='xsel --clipboard --output'
end

# Source git aliaes
source ~/.config/fish/aliases/git-aliases.fish

# Source this last becasue it sets HOMEs.
source ~/.asdf/asdf.fish
