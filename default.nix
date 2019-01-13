{ nixpkgs ? import <nixpkgs> {} }:
nixpkgs.haskellPackages.callPackage ./language-delphi.nix { }