{haskellPackages ? (import <nixpkgs> {}).haskellPackages }: with haskellPackages;
cabal.mkDerivation (self: {
  pname = "Yenode";
  version = "0.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  buildDepends = [
    aeson conduit dataDefault fastLogger hjsmin httpConduit
    monadControl monadLogger shakespeare text waiExtra waiLogger warp
    yaml yesod yesodAuth yesodCore yesodForm yesodStatic
  ];
  testDepends = [ hspec yesod yesodCore yesodTest ];
  buildTools = [cabalInstall];
  meta = {
    license = self.stdenv.lib.licenses.free;
    platforms = self.ghc.meta.platforms;
  };
})
