set dotenv-load := true

default:
    @just --list

# === Setup ===
install:
    pnpm install

clean:
    rm -rf ./node_modules/
    rm -rf ./package-lock.json
    rm -rf ./pnpm-lock.json
    rm -rf ./yarn.lock
    rm -rf ./yarn-error.log

# === Maintenance ===

format-check:
    npx prettier --check .

format:
    npx prettier --write .

format-all: format format-justfile format-nix

format-justfile:
    just --unstable --fmt

format-nix:
    nixpkgs-fmt *.nix

format-utils: format-justfile format-nix

check-deps-versions:
    npx ncu

update-deps:
    npx ncu --upgrade --target minor
