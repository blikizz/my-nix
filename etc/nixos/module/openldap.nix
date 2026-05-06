{ config, pkgs, ... }:

{
  nixpkgs.overlays = [
    (_: prev: {
      openldap = prev.openldap.overrideAttrs {
        doCheck = false; # False is a bit more honest on x86_64 systems
      };
    })
  ];
}
