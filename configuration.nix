{ config, pkgs, ... }: with pkgs;

{
 
  environment.systemPackages = [
      git
      stdenv
      tmux
      neo4j 
    ];
 
  require = [
    /vagrant/hdevenv.nix
  ];
  
 }