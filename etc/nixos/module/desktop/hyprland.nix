{ config, pkgs, ... }:

{
  services.displayManager.ly.enable = true;
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
    withUWSM = true;
  };

  systemd.user.services.awww.enable = true;
  programs.waybar.enable = true;
  services.dunst.enable = true;
  systemd.user.services.hyprpolkitagent.enable = true;
  security.polkit.enable = true;

  xdg.portal = {
   enable = true;
   extraPortals = with pkgs; [
     xdg-desktop-portal-hyprland
     xdg-desktop-portal-gtk
   ];
   config = {
     hyprland = {
       default = [ "hyprland" "gtk" ];
       "org.freedesktop.impl.portal.Secret" = [ "gnome-keyring" ];
     };
   };
 };

  environment.systemPackages = with pkgs; [
    rofi
    nwg-look
    libsForQt5.qt5ct
    kdePackages.qt6ct
    kdePackages.qtstyleplugin-kvantum
    libsForQt5.qtstyleplugin-kvantum
    cliphist
    wl-clipboard
    hyprpolkitagent
    awww
    hyprlock
    grim
    slurp
    libsForQt5.qt5.qtwayland
    qt6.qtwayland
    brightnessctl
    nwg-displays
  ];
}
