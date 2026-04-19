{ config, pkgs, ... }:

{
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;
  programs.hyprland = {
    enable = true;
    xwayland.enable = true; # Enable X11 compatibility
    withUWSM = true;        # Use Universal Wayland Session Manager
  };

  systemd.user.services.swww = {
   Unit = {
     Description = "swww daemon for Wayland wallpaper";
     After = [ "graphical-session.target" ];
     Wants = [ "graphical-session.target" ];
     PartOf = [ "graphical-session.target" ];
  };
   Service = {
     Type = "simple";
     ExecStart = "${pkgs.swww}/bin/swww-daemon";
     Restart = "always";
     Environment = [ "WAYLAND_DISPLAY" ];
   };
   Install.WantedBy = [ "graphical-session.target" ];
 };

  programs.waybar.enable = true;
  services.dunst.enable = true;
  services.hyprpolkitagent.enable = true;

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
    qt5ct
    qt6ct
    kvantum
    cliphist
    wl-clipboard
    swww
    hyprlock
    grim
    slurp
    qt5-wayland
    qt6-wayland
    brightnessctl
    nwg-displays
  ];
}
