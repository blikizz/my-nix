{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./app.nix
      ./module.nix
      ./theme.nix
    ];
  
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "25.11";

}
