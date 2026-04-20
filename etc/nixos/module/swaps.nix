{ config, lib, pkgs, modulesPath, ... }:

{
   boot.kernel.sysctl = { "vm.swappiness" = 10;};
}
