{ pkgs, ... }: with pkgs;
let
  inherit (haskellPackages_ghc783_profiling) cabal2nix yesodBin ghcMod;
in
{
  environment.systemPackages = [
    ghc.ghc783
    cabal2nix
    ghcMod
    yesodBin
  ];
}