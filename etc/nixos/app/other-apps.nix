{ config, pkgs, ...}:

{
  environment.systemPackages = with pkgs;
  [
    brave
    cantata
    vlc
    nemo
  ];
}
