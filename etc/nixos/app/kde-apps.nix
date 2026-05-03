{ config, pkgs, ...}:

{
  environment.systemPackages = with pkgs;
  [
    kdePackages.ark
    kdePackages.kate
  ];
}


