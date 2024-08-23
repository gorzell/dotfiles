# Universal Settings
set -x LSCOLORS gxfxcxdxbxegedabagacad
set -x PATH ~/.local/bin ~/.cargo/bin ~/.rbenv/bin ~/bin /usr/local/cuda/bin /usr/local/bin $PATH
set -x LD_LIBRARY_PATH /usr/local/cuda/lib64 $LD_LIBRARY_PATH
set -x GNUPGHOME ~/.gnupg
set -x UID (id -u)
set -x GID (id -g)

## VIM Mode Settings
fish_vi_key_bindings
bind -M insert -m default jj backward-char force-repaint

# OS Specific Settings
switch (uname)
case Darwin
    set -x JAVA_HOME /Library/Java/JavaVirtualMachines/openjdk.jdk/Contents/Home
    set -x XDG_CONFIG_HOME ~/.config
    set -x PATH /opt/homebrew/bin $PATH
    if type -q rbenv
        status --is-interactive; and source (rbenv init -|psub)
    end
    starship init fish | source
case Linux
    set -x PATH ~/.cargo/bin $PATH
    set -x JAVA_HOME /usr/lib/jvm/zulu-14-amd64
    set -x JDK_18 /usr/lib/jvm/zulu-8-amd64
    if type -q rbenv
        status --is-interactive; and source (rbenv init -|psub)
    end
    alias pbcopy='xsel --clipboard --input'
    alias pbpaste='xsel --clipboard --output'
    starship init fish | source
end

# Source this last becasue it sets HOMEs.
if test -d ~/.asdf
    source ~/.asdf/asdf.fish
end
