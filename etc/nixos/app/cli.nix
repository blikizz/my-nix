{ config, pkgs, ...}:

{
  environment.systemPackages = with pkgs;
  [
    nano
    neovim
    bluez
    wget
    kitty
    fish
    f3
    gnumake
    smartmontools
    bat
    duf
    eza
    fzf
    caligula
    rmpc
    git
    btop
    fastfetch
    unzip
    unrar
    bluez
    bluez-tools
    mesa
    gcc
  ];
}

