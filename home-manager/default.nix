{ config, pkgs, ... }:

{
    imports =
    [
      ./awww.nix
      ./bash.nix
      ./browser.nix
      ./kitty.nix
      ./git.nix
      ./home.nix
      ./niri.nix
      ./mpd.nix
      ./packages.nix
      # ./pywal.nix
      ./rmpc.nix
      ./waybar.nix
      ./wofi.nix
      ./yazi.nix
    ];
}