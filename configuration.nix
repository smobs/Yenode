{ config, pkgs, ... }: with pkgs;

{
  environment.systemPackages = [
    git
    tmux
    neo4j
  ];
  require = [/vagrant/hdevenv.nix];

}