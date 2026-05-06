{ config, pkgs, ...}:
{
  services.mpd.enable = true;
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };
  services.printing.enable = true;
  services.pulseaudio.enable = false;
  services.blueman.enable = true;
  hardware.bluetooth.enable = true;
  hardware.opengl.enable = true;
  hardware.enableAllFirmware = true;
  # services.xserver.libinput.enable = true;
  # services.flatpak.enable = true;
  programs.nix-ld.enable = true;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };
}
