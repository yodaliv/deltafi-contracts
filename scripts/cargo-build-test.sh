#!/usr/bin/env bash

set -e
cd "$(dirname "$0")/.."

source ./scripts/rust-version.sh stable
source ./scripts/solana-version.sh

export RUSTFLAGS="-D warnings"
export RUSTBACKTRACE=1

set -x

# Build/test all host crates
cargo +"$rust_stable" build
cargo +"$rust_stable" test -- --nocapture

exit 0
