set -U EDITOR nvim
set -x ALL_PROXY socks5h://127.0.0.1:7891
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/wyattjee/opt/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
set -Ux JAVA_HOME "/usr/local/opt/openjdk@11"
set -x PATH /usr/local/opt/openjdk@11/bin $PATH
set -x PATH $HOME/.cargo/bin $PATH

starship init fish | source
