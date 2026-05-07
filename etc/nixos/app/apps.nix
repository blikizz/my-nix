{ config, pkgs, ...}:

{
  environment.systemPackages = with pkgs;
  [
    brave
    cantata
    celluloid
    gparted
    lxqt.lxqt-archiver
    lxqt.pcmanfm-qt
    lutris
  ];
}
