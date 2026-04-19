{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs;
    [
        candy-icons
        sweet-folders
        sweet
    ];
}
