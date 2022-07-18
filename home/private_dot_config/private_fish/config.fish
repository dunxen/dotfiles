if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Aliases
alias sparrow="/opt/sparrow/bin/Sparrow"
alias emsdk_setup ". $HOME/emsdk/emsdk_env.fish"
alias configure-bitcoin-lite="$HOME/Bitcoin/bitcoin/configure --without-miniupnpc --without-natpmp --disable-bench --without-gui"
alias make-bitcoin="make -j17"
alias make-bitcoin-clean="./autogen.sh && ./configure && make-bitcoin"
alias tailscale-up-with-exit-node="sudo tailscale up --exit-node=100.94.231.30"

# Replace some commands
alias ls=exa
alias minicom-pico='minicom -b 115200 -o -D /dev/ttyACM0'
alias get_idf='. /home/duncan/esp/esp-idf/export.fish'

# Pyenv
status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source

# Pop_OS! Logo and system info
neofetch

# Initialise starship
eval "$(starship init fish)"


# Bun
set -Ux BUN_INSTALL "/home/duncan/.bun"
set -px --path PATH "/home/duncan/.bun/bin"

