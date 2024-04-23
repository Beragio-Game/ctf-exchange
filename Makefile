-include .env

build:; forge build

deploy-ctf:
	forge script src/exchange/scripts/ExchangeDeployment.s.sol:ExchangeDeployment --rpc-url $(RPC_URL) --private-key $(PK) --broadcast  -vvvv
