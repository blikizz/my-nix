{ config, pkgs, ...}:

let

  nix-gc-env = builtins.fetchGit {
    url = "https://github.com/Julow/nix-gc-env";
    rev = "4753f3c95891b711e29cb6a256807d22e16cf9cd";
  };

in 
{
  imports = [
    (import "${nix-gc-env}/nix_gc_env.nix")
  ];

  nixpkgs.config.allowUnfree = true;
  nix.gc = {
    automatic = true;
    dates = "weekly";
  };

  nix.gc.delete_generations = "+7";
  nix.settings.auto-optimise-store = true;
}
