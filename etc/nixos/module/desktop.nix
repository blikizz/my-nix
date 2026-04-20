{ config, pkgs, ... }:

{
  imports =
    [
        # ./desktop/kde.nix
         ./desktop/lxqt.nix
        # ./desktop/hyprland.nix
    ];

}
