# Installation

```sh
npm install -D @astrology-cm/tsconfig
```

```sh
yarn add --dev @astrology-cm/tsconfig
```

```sh
pnpm add -D @astrology-cm/tsconfig
```

# Configuration

Add to your `tsconfig.json`:

## ESM

```json
"extends": "@astrology-cm/tsconfig/esm.json"
```

## CommonJS

```json
"extends": "@astrology-cm/tsconfig/cjs.json"
```

## Unspecified

```json
"extends": "@astrology-cm/tsconfig/base.json"
```
