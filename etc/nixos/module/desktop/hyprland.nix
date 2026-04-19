{ config, pkgs, ... }:

{
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;
  programs.hyprland = {
    enable = true;
    xwayland.enable = true; # Enable X11 compatibility
    withUWSM = true;        # Use Universal Wayland Session Manager
  };

  systemd.user.services.awww.enable = true;
  programs.waybar.enable = true;
  services.dunst.enable = true;
  systemd.user.services.hyprpolkitagent.enable = true;

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
