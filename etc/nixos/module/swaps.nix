{ config, lib, pkgs, modulesPath, ... }:

{
   boot.kernel.sysctl = { "vm.swappiness" = 10;};
   zramSwap = {
     enable = true;
     algorithm = "zstd";
     priority = 100;
     memoryPercent = 30;
   };
}
