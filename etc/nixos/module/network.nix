{ config, pkgs, ...}:
{
  networking.hostName = "nix";
  # networking.wireless.enable = true;
  networking.networkmanager.enable = true;
  networking.firewall.enable = true;
}
