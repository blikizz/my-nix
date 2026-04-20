{ config, pkgs, ... }:

{
  services.displayManager.ly.enable = true;
  services.xserver.enable = true;
  services.xserver.desktopManager.lxqt.enable = true;
}
