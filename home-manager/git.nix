{ config, pkgs, ... }:

{
  # basic configuration of git, please change to your own
  programs.git = {
    enable = true;
    settings.user.name = "Starveil-Critters";
    settings.user.email = "starveil@posteo.net";
  };
}