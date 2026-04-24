{ config, pkgs, ... }:

{
  fonts = {
    packages = with pkgs; [
      nerd-fonts.caskaydia-cove
      nerd-fonts.caskaydia-mono
      nerd-fonts.fira-code
      nerd-fonts.fira-mono
      nerd-fonts.iosevka
      nerd-fonts.iosevka-term
      nerd-fonts.jetbrains-mono
      nerd-fonts.symbols-only
    ];
  };
}

