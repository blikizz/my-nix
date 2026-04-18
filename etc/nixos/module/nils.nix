{ config, pkgs, ...}:

{
 users.users.nils = {
    isNormalUser = true;
    description = "nils";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.fish;
    packages = with pkgs; [
    ];
  };

  programs.fish.enable = true;
}
