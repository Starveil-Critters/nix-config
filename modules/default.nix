{ config, pkgs, inputs, ... }:

{
  imports =
    [ 
      ./bluetooth.nix
      ./fonts.nix
      ./locale.nix
      ./nvidia.nix
      ./packages.nix
      ./sound.nix
      ./steam.nix
      ./users.nix
      ./v4l2loopback.nix
      ./xkb.nix
    ];
}