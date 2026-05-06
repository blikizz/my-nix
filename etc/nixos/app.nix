{ config, pkgs, ... }:

{
  imports =
    [
        ./app/cli.nix
        ./app/apps.nix
        ./app/steam.nix
    ];

}
