## Introduction
This project is smart contract demo, and deploy smart contract
### project structure
```
.
├── README.md
├── foundry.toml
├── package.json
├── pnpm-lock.yaml
├── remappings.txt
├── script
│   └── Script.s.sol
├── src
│   ├── Box.sol
│   └── Counter.sol
├── test
│   ├── Box.t.sol
│   └── Counter.t.sol
└── web
    ├── abi
    │   └── box.ts
    ├── babel.config.js
    ├── jest.config.ts
    ├── package.json
    ├── pnpm-lock.yaml
    ├── src
    │   ├── Box.ts
    │   └── utils
    │       └── client.ts
    ├── test
    │   └── box.test.ts
    └── tsconfig.json
```

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

- sepolia

```shell
forge script --chain sepolia script/Script.s.sol:MyScript --rpc-url $SEPOLIA_RPC_URL --broadcast --verify -vvvv
```

- local chain

```shell
forge script script/Script.s.sol:MyScript --fork-url http://localhost:8545 --broadcast
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
