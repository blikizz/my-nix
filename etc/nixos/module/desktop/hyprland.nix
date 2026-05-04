{ config, pkgs, ... }:

{
  services.displayManager.ly.enable = true;
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  security.polkit.enable = true;

  xdg.portal = {
   enable = true;
   extraPortals = with pkgs; [
     xdg-desktop-portal-hyprland
     lxqt.xdg-desktop-portal-lxqt
   ];
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
    lxqt.lxqt-policykit
    lxqt.lxqt-notificationd
    awww
    waybar
    hyprlock
    lxqt.lximage-qt
    lxqt.screengrab
    libsForQt5.qt5.qtwayland
    qt6.qtwayland
    brightnessctl
    nwg-displays
  ];
}
