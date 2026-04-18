{ config, pkgs, ...}:

{
  programs.gamemode.enable = true;
  programs.steam.extraCompatPackages = with pkgs; [ proton-ge-bin ];

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
  };
}
