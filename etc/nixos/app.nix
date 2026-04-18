{ config, pkgs, ... }:

{
  imports =
    [
        ./app/cli.nix
        ./app/kde-apps.nix
        ./app/other-apps.nix
        ./app/steam.nix
    ];

}
