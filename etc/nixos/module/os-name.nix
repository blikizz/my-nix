{ config, lib, pkgs, modulesPath, ... }: {
  options = {
    system.nixos.codeName = lib.mkOption {
      apply = _: "elysium-os";
    };
  };
}
