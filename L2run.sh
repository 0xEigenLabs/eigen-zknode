PROVER_ADDR=http://localhost:50061 RUST_LOG="debug,evm=trace,consensus::auto=trace,consensus::engine=trace,rpc::eth=trace" nohup cargo run -r -- run --database mdbx --log-level debug --chain testdata/el-cl-genesis-data/metadata/genesis.json --http --http.addr 0.0.0.0 --http.port 38546 --http.api debug,eth,net,trace,web3,rpc --authrpc.jwtsecret testdata/el-cl-genesis-data/jwt/jwtsecret --authrpc.addr 0.0.0.0 --authrpc.port 38551 --port 30304 --discovery.port 30304 --datadir tmp/layer2/chain  >> chain_layer2.log 2>&1 &