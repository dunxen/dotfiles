if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Aliases
alias sparrow="/opt/sparrow/bin/Sparrow"

alias configure-bitcoin-lite="$HOME/Bitcoin/bitcoin/configure --without-miniupnpc --without-natpmp --disable-bench --without-gui"
alias configure-bitcoin-full-with-legacy-wallet="$HOME/Bitcoin/bitcoin/configure BDB_LIBS=\"-L$BDB_PREFIX/lib -ldb_cxx-4.8\" BDB_CFLAGS=\"-I $BDB_PREFIX/include\""
alias make-bitcoin="make -j17"
alias make-bitcoin-clean="./autogen.sh && ./configure && make-bitcoin"

# Replace some commands
alias ls=exa
alias cat=bat
alias grep=rg

# Pyenv
status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source

# Pop_OS! Logo and system info
neofetch

# Initialise starship
eval "$(starship init fish)"

