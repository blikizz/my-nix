{ config, pkgs, ...}:

{
  environment.systemPackages = with pkgs;
  [
    brave
    cantata
    celluloid
    gparted
    lxqt.pcmanfm-qt
    lutris
  ];
}
