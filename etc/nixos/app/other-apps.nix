{ config, pkgs, ...}:

{
  environment.systemPackages = with pkgs;
  [
    brave
    cantata
    celluloid
    gparted
    nemo
    lutris
  ];
}
