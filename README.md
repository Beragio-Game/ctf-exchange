# Beragio CTF Exchange



## Background

The Beragio CTF Exchange is an exchange protocol that facilitates atomic swaps between [Conditional Tokens Framework(CTF)](https://docs.gnosis.io/conditionaltokens/) ERC1155 assets and an ERC20 collateral asset.

It is intended to be used in a hybrid-decentralized exchange model wherein there is an operator that provides offchain matching services while settlement happens on-chain, non-custodially.


## Documentation

Docs for the CTF Exchange are available in this repo [here](./docs/Overview.md).




## Development

Install [Foundry](https://github.com/foundry-rs/foundry/).

Foundry has daily updates, run `foundryup` to update `forge` and `cast`.

---

## Testing

To run all tests: `forge test`

To run test functions matching a regex pattern `forge test -m PATTERN`

To run tests in contracts matching a regex pattern `forge test --mc PATTERN`

Set `-vvv` to see a stack trace for a failed test.

---

To install new foundry submodules: `forge install UserName/RepoName@CommitHash`

To remove: `forge remove UserName/RepoName`

