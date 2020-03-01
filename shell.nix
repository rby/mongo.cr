# This allows overriding pkgs by passing `--arg pkgs ...`
{ pkgs ? (import <nixpkgs> {}) }:

with pkgs;

mkShell {
  buildInputs = [
    pcre
    libevent
    zlib
    libyaml
    shards
    mongoc
    libbson
    openssl_1_1
    gcc
    binutils
    # put packages here.
  ];
}
