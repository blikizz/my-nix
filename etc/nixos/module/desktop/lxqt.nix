{ config, pkgs, ... }:

{
  services.displayManager.ly.enable = true;
  services.xserver.enable = true;
  services.xserver.desktopManager.lxqt.enable = true;

  environment.lxqt.excludePackages; [ 
   pcmanfm-qt
   xterm
   lxqt-archiver
  ]

  environment.systemPackages = with pkgs; [
    nwg-look
    libsForQt5.qt5ct
    kdePackages.qt6ct
    nwg-displays
  ];
}
