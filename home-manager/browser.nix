{ config, pkgs, ... }:

{
  # Install firefox.
  programs.firefox.enable = true;
  programs.librewolf.enable = true;
}