{ config, pkgs, ...}:

{
  environment.systemPackages = with pkgs;
  [
    nano
    f3
    neovim
    bluez
    wget
    kitty
    fish
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

