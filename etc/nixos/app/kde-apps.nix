{ config, pkgs, ...}:

{
  environment.systemPackages = with pkgs;
  [
    kdePackages.ark
    kdePackages.dolphin
    kdePackages.dolphin-plugins
    kdePackages.kio-admin
    kdePackages.kdf
    kdePackages.kompare
    kdePackages.filelight
    kdePackages.kate
  ];
}
