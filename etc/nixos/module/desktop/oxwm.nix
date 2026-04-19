{ config, pkgs, ...}:

{
 services.picom.enable = true;
 services.displayManager.ly.enable = true;
 services.xserver.enable = true;
 qt.enable = true;
 services.xserver.windowManager.oxwm.enable = true;
 xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
    xdgOpenUsePortal = true;
  };


 environment.systemPackages = with pkgs;
 [
 rofi
 xwallpaper
 libsForQt5.qt5ct
 kdePackages.qt6ct
 brightnessctl
 kvantum
 lxappearance
 network-manager-applet
 (pkgs.xdg-desktop-portal-gtk.overrideAttrs (prevAttrs: {
      buildInputs = builtins.filter (x: x != prevAttrs.gnome-desktop && x != prevAttrs.gnome-settings-daemon) prevAttrs.buildInputs;
      mesonFlags = [ "-Dwallpaper=disabled" ];
    }))
 ];
}
