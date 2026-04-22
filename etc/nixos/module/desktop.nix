{ config, pkgs, ... }:

{
  imports =
    [
         ./desktop/lxqt.nix
         ./desktop/hyprland.nix
    ];

}
