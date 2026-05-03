{ config, pkgs, ... }:

{
  services.displayManager.ly.enable = true;
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
    withUWSM = true;
  };

  systemd.user.services.hyprpolkitagent = {
    description = "Hyprland Polkit Agent";
    wantedBy = [ "graphical-session.target" ];
    wants = [ "graphical-session.target" ];
    after = [ "graphical-session.target" ];
  serviceConfig = {
    Type = "simple";
    ExecStart = "${pkgs.hyprpolkitagent}/bin/hyprpolkitagent";
    Restart = "on-failure";
    };
  };

  security.polkit.enable = true;

  xdg.portal = {
   enable = true;
   extraPortals = with pkgs; [
     xdg-desktop-portal-hyprland
     xdg-desktop-portal-lxqt
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
    xdg-desktop-portal-hyprland
    xdg-desktop-portal-lxqt
    lxqt-policykit
    lxqt-notificationd
    awww
    hyprlock
    lxqt.lximage-qt
    lxqt.screengrab
    libsForQt5.qt5.qtwayland
    qt6.qtwayland
    brightnessctl
    nwg-displays
  ];
}
