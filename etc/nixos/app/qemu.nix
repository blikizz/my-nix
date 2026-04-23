{ config, pkgs, ...}:

{

programs.virt-manager.enable = true;
users.groups.libvirtd.members = ["nils"];
virtualisation.libvirtd.enable = true;
virtualisation.spiceUSBRedirection.enable = true;
environment.systemPackages = [ pkgs.qemu ];

}
