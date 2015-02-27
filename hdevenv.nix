{ pkgs, ... }: with pkgs;

{
  environment.systemPackages = [
    ghc.ghc783
    haskellPackages_ghc783_profiling.cabal2nix
    haskellPackages_ghc783_profiling.yesodBin
  ];
}