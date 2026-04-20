{ config, pkgs, ...}:

{
  nixpkgs.config.allowUnfree = true;
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d"; 
    delete_generations = "+5";
  };
  
  nix.settings.auto-optimise-store = true
}
