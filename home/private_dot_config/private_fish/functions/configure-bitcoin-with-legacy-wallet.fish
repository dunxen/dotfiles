function configure-bitcoin-with-legacy-wallet
$HOME/Bitcoin/bitcoin/configure BDB_LIBS="-L$BDB_PREFIX/lib -ldb_cxx-4.8" BDB_CFLAGS="-I $BDB_PREFIX/include"
end
