{ config, pkgs, ...}:

{
  environment.systemPackages = with pkgs;
  [
    kdePackages.ark
    kdePackages.kompare
    kdePackages.filelight
    kdePackages.kate
  ];
}


