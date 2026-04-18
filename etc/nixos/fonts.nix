{ config, pkgs, ... }:

{
  fonts = {
    packages = with pkgs; [
      nerd-fonts.cascadia-code
      nerd-fonts.cascadia-mono
      nerd-fonts.fira-code
      nerd-fonts.fira-mono
      nerd-fonts.fira-sans
      nerd-fonts.iosevka
      nerd-fonts.iosevka-term
      nerd-fonts.jetbrains-mono
      nerd-fonts.symbols-only
      nerd-fonts.symbols-only-mono
    ];
  };
}

