{ config, pkgs, ... }:

{
  imports =
    [
        # ./desktop/kde.nix
          ./desktop/oxwm.nix
        # ./desktop/hyprland.nix
    ];

}
