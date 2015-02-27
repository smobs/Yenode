{ pkgs, ... }: with pkgs;
let
  inherit (haskellPackages_ghc783_profiling) cabal2nix yesodBin;
in
{
  environment.systemPackages = [
    ghc.ghc783
    cabal2nix
    yesodBin
  ];
}