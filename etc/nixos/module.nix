{ config, pkgs, ... }:

{
  imports =
    [
        ./module/boot.nix
        ./module/desktop.nix
        ./module/maintainer.nix
        ./module/network.nix
        ./module/nils.nix
        ./module/services.nix
        ./module/timezone.nix
        ./module/swaps.nix
        ./module/os-name.nix
	./module/openldap.nix
	./module/nixpkg.nix
    ];

}
