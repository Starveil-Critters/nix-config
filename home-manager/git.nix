{ config, pkgs, ... }:

{
  # basic configuration of git, please change to your own
  programs.git = {
    enable = true;
    userName = "Starveil-Critters";
    userEmail = "starveil@posteo.net";
  };
}